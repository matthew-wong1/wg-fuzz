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
    const array0 = new Float32Array([-1.0, 0.0, 0.5, 1.0, 1.0, 0.5, -0.25, -0.25, 0.0, 0.75, -1.0, 1.0, -0.75, -0.25, -0.75, 0.5, -1.0, 0.75, 0.0, 0.0, -1.0, 0.75, 1.0, 0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.25, 0.0, 0.25, 0.25, -0.25, 1.0, 0.25, 0.0, 0.25, 0.75, -0.75, 0.5, 0.75, 0.75, 0.75, 0.0, -0.25, -0.75, -0.75, -0.25, 0.25, 1.0, 0.75, -1.0, -1.0, 0.0, -1.0, -0.25, 0.75, -0.25, 0.75, -0.75, -0.25, -0.5, -0.5, -0.25, -0.75, 0.0, 0.5, 0.5, -1.0, -0.75, 0.0, 1.0, -0.25, 0.5, -0.75, 0.75, 0.75, -0.25, 0.0, 1.0, 0.0, -0.25, -1.0, -0.5, -0.25, -0.25, 0.0, -0.75, 0.75, -0.25, -0.5, -0.25, 1.0, -0.25, -0.5, -0.5, 0.0, 0.75, 1.0, ]);
    
    
    
    const array1 = new Float32Array([-0.75, 0.0, -0.75, 1.0, -0.5, -0.75, -0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 0.5, 0.0, 0.0, -0.25, 0.75, 0.25, 0.0, -1.0, -0.25, 0.0, -0.5, 0.25, 0.5, 0.75, -0.5, -1.0, 0.25, 0.75, 0.25, 0.5, 0.75, 0.5, -0.5, -1.0, 0.0, -0.5, 0.5, 0.75, 0.75, -0.5, 1.0, -0.75, -1.0, -0.5, -1.0, 0.5, 0.5, 1.0, -1.0, 1.0, -0.75, -0.25, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, 0.5, -1.0, -0.25, 0.75, 0.75, 1.0, -1.0, 0.25, -0.25, 0.5, 0.25, 1.0, -0.25, 1.0, 0.0, -0.75, 0.0, 0.5, 0.0, -1.0, -1.0, 0.25, 0.0, -0.75, -0.5, -0.5, 0.25, 0.0, 0.0, -1.0, -0.5, 1.0, 0.5, -1.0, 0.5, -0.75, -0.75, 1.0, 0.0, 0.25, ]);
    
    const array2 = new Float32Array([-1.0, 0.25, 0.5, -1.0, -0.75, -1.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.0, -0.5, 0.5, -1.0, 0.0, -0.75, 0.25, -0.25, 1.0, 1.0, 0.75, 1.0, -1.0, 0.25, 0.25, -1.0, 0.5, -1.0, 0.5, -1.0, 0.5, 0.25, 0.5, 0.25, -0.25, 0.0, 0.0, 0.5, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, 0.75, 0.25, -1.0, -1.0, 0.5, 0.25, 0.75, -0.5, 0.5, 1.0, 0.25, -0.25, 0.25, 1.0, -1.0, 0.5, -0.75, -0.5, 0.25, -0.5, 0.75, -0.25, 0.5, 0.0, 0.0, -0.75, -0.25, 0.5, -0.25, -0.75, -0.25, 0.25, -0.5, -0.5, 1.0, 0.75, -0.75, 0.5, 0.75, 1.0, 0.5, 0.0, 0.25, -0.5, 0.5, 0.75, 0.75, 0.25, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, -0.5, ]);
    
    
    const array3 = new Float32Array([0.5, -0.75, 0.25, -0.75, 0.25, -0.75, -1.0, -0.25, 0.75, -0.75, 0.5, 0.0, 0.5, 0.5, 0.25, -1.0, -1.0, -0.25, 1.0, 1.0, 1.0, 1.0, 0.25, -0.5, 0.0, 0.75, 0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -0.25, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, -1.0, -0.75, -0.25, -1.0, 0.25, -1.0, 0.75, 0.25, -0.75, 0.0, -0.75, -1.0, -1.0, 0.75, 0.0, 0.75, -0.75, 0.25, -0.25, -0.25, 0.25, -0.75, 0.75, 0.25, -0.5, 0.25, -0.75, -0.5, -0.5, 0.0, -0.25, -0.25, -0.25, 0.0, 0.75, 0.0, 0.25, -0.5, 1.0, 0.25, 0.75, 0.5, 0.5, 1.0, 0.75, -0.25, -0.5, 0.25, 0.75, 0.0, -0.75, 0.25, 0.75, 0.25, 1.0, 0.0, -1.0, 1.0, 0.5, 0.5, -1.0, ]);
    
    
    const array4 = new Float32Array([1.0, 0.5, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, -0.75, -0.75, -0.75, 0.75, -1.0, 0.5, 1.0, -1.0, 0.25, -1.0, -1.0, -1.0, 0.75, 0.5, 1.0, 1.0, 0.5, -0.5, -0.75, 1.0, 0.25, 0.0, -0.75, -1.0, -0.75, 1.0, 0.5, 1.0, 1.0, -1.0, -0.75, -0.25, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, -0.75, -0.5, 0.75, -0.75, 1.0, -0.25, -0.5, -0.25, -0.75, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, -1.0, -0.25, 0.5, -0.5, -1.0, -0.25, -0.75, 0.5, 1.0, -0.25, 0.25, -0.5, 1.0, 0.0, -0.5, -1.0, -1.0, 1.0, -0.75, 0.5, 0.0, 1.0, 0.25, 0.75, 0.5, 1.0, -0.75, 0.5, -0.75, -0.25, -1.0, 0.75, 1.0, -1.0, -0.25, 0.5, 0.25, -0.5, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array5 = new Float32Array([-0.5, -0.75, 0.5, 1.0, -0.75, 0.75, 0.75, -0.5, -0.75, -1.0, 1.0, -0.75, -1.0, 0.25, 0.0, 0.5, 0.25, -0.25, -1.0, 1.0, -0.75, -0.25, -1.0, -0.25, 0.75, 0.25, 0.5, -1.0, 0.0, 1.0, -1.0, 0.5, -0.25, 0.25, 0.75, -1.0, -0.25, 1.0, -0.75, -0.75, -0.75, -0.75, -0.25, 0.75, 1.0, -0.75, -0.25, 0.75, -0.25, 0.75, -0.75, 0.0, 0.0, 0.25, 0.0, 0.5, -0.75, -0.75, 0.75, 0.0, -0.5, 0.5, -0.75, -0.75, 0.0, 0.0, 0.5, -1.0, -1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.25, 0.0, -1.0, 0.0, 1.0, 0.0, -1.0, 0.0, 0.5, -1.0, 1.0, -0.5, -0.75, 0.25, 0.75, -1.0, 0.0, 0.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.5, -1.0, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query000.destroy()
    command_encoder000.popDebugGroup()
    
    
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    device10.pushErrorScope("out-of-memory");
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    texture100.destroy();
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
    query100.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_buffer101 = command_encoder101.finish();
    command_encoder100.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.submit([command_buffer101, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array6 = new Float32Array([-0.75, 1.0, -1.0, -0.25, 0.0, 0.75, -1.0, -0.25, 0.0, 1.0, 0.5, 0.5, -0.5, -1.0, 1.0, -0.5, 0.0, -0.5, 1.0, -0.75, -0.75, 0.0, -0.25, 0.75, -0.75, 0.5, -1.0, 0.25, -0.75, 0.0, -0.25, -0.5, 0.5, -0.75, 0.25, -0.75, -0.5, 0.5, 0.25, -0.25, -1.0, 1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.25, -1.0, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, -0.5, 0.75, -0.25, -1.0, 1.0, 1.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.25, 0.75, 0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -0.5, 0.75, 0.0, -0.25, 0.0, 1.0, 0.5, -0.75, 0.25, -0.25, -1.0, -0.25, 0.25, -0.75, 0.0, 0.5, -0.75, 0.75, -0.5, 0.0, 0.0, -0.5, -0.5, -0.25, -1.0, -0.5, ]);
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
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder100.popDebugGroup()
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder100.popDebugGroup();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.pushErrorScope("out-of-memory");
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
    device10.queue.submit([]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
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
    device40.destroy();
    const array7 = new Float32Array([0.0, 1.0, 0.25, 1.0, -0.5, 0.75, -0.25, 0.5, 0.25, -0.25, 0.0, 0.25, 0.5, 0.75, -1.0, 1.0, -0.5, -0.25, -1.0, -0.5, 0.75, -0.5, -0.5, -0.75, -1.0, -0.5, 0.25, -0.25, -1.0, 0.75, 1.0, 1.0, 0.25, -0.5, -1.0, 0.75, -0.75, 0.25, 0.25, 0.25, 0.25, -0.25, 0.5, -0.75, 0.25, -1.0, 1.0, 0.5, -0.25, 0.75, 0.0, -0.25, 0.0, 0.5, 0.5, 0.75, 0.75, 0.75, -0.75, -1.0, -0.5, -0.5, -1.0, 0.0, 0.75, 0.5, 0.25, 0.5, 0.25, 0.0, -1.0, -0.5, 0.25, -0.25, -0.75, -0.75, -1.0, -1.0, 0.25, 1.0, -0.25, -0.25, 0.0, -1.0, 0.75, -0.5, 1.0, 0.75, 1.0, 0.75, 0.75, -0.5, 1.0, 1.0, 0.25, 0.75, -0.5, 0.75, -0.75, 0.75, ]);
    
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder100.insertDebugMarker("mymarker");
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
    
    
    buffer101.destroy()
    const array8 = new Float32Array([0.5, -0.75, -1.0, -0.75, -1.0, 0.0, 0.25, -0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 1.0, -0.75, 0.25, 0.5, 0.25, -0.25, 0.25, -1.0, 0.0, 0.25, 0.75, -1.0, -0.5, 0.0, -1.0, 0.0, -0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -0.25, 0.75, -0.75, -0.75, 1.0, -1.0, 0.25, 0.75, 0.5, 1.0, -1.0, -0.5, -0.25, 1.0, -1.0, 0.5, 1.0, 0.75, 0.5, 0.0, -1.0, 0.75, -0.5, 0.25, -0.5, 0.0, -0.25, 1.0, 0.75, 1.0, 0.0, -0.5, -1.0, 0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.25, -1.0, 0.25, -0.75, -1.0, -1.0, -1.0, -0.25, -1.0, -1.0, -0.5, 0.25, 0.25, -1.0, 0.75, -0.5, 0.25, -0.5, -0.5, -0.5, -0.25, 0.75, 1.0, 1.0, 1.0, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder101.setPipeline(render_pipeline102);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_buffer103 = command_encoder103.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array9 = new Float32Array([0.5, -0.25, -0.5, 0.0, -0.5, 0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -0.25, -0.5, -1.0, 0.5, 0.0, 0.5, 0.25, -0.75, 1.0, 1.0, -0.5, 1.0, 0.25, -1.0, 0.0, -0.5, -0.5, 1.0, 0.5, 0.25, 0.75, 0.5, -0.75, -1.0, -0.25, -0.75, 0.5, 1.0, -0.25, -0.25, 0.25, 0.25, -0.25, 0.0, 0.25, -0.5, 0.5, 1.0, -0.25, -0.75, -0.75, -1.0, 0.25, -0.25, 0.0, -0.75, -0.75, -0.75, 0.75, 0.75, -0.75, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, 1.0, 0.25, 0.75, -1.0, 0.25, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, 0.0, 0.25, 0.0, -0.5, -1.0, 0.0, -0.5, -1.0, 0.75, -1.0, -0.25, 0.5, 1.0, -0.25, 0.75, -1.0, -0.25, -0.75, -0.5, 0.5, ]);
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    query101.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    const command_buffer102 = command_encoder102.finish();
    texture100.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device60.pushErrorScope("out-of-memory");
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    device30.pushErrorScope("internal");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer102, ]);
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query600.destroy()
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    query101.destroy()
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
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
    
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32sint",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setIndexBuffer(buffer102, "uint16");
    
    query600.destroy()
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder100.setIndexBuffer(buffer102, "uint16");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    query101.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
        layout: render_pipeline102.getBindGroupLayout(0),
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device60.destroy();
    query101.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer105 = command_encoder105.finish();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer104.destroy()
    query101.destroy()
    query102.destroy()
    render_bundle_encoder100.drawIndirect(buffer103, 0);
    texture200.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder102.setPipeline(render_pipeline108);
    const array10 = new Float32Array([-0.5, -1.0, -0.25, 1.0, -0.75, 0.5, -0.25, 1.0, -0.25, -0.5, 0.5, -0.75, 0.0, 0.75, -0.25, 0.5, 0.75, 0.0, 0.0, 0.0, -0.25, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, -0.75, -0.25, -0.75, 0.25, -0.75, 0.0, 0.75, -1.0, -0.25, -0.25, -0.25, 0.0, -1.0, 1.0, 0.75, -0.25, 0.5, 0.0, 0.25, 0.25, -0.25, 0.0, -1.0, 0.0, -0.5, 1.0, 0.75, -1.0, -0.25, -1.0, 0.75, 1.0, -0.25, -1.0, 0.25, -0.75, 0.0, -0.25, 0.5, 0.0, -0.5, -1.0, 0.75, 0.5, -0.75, -1.0, -0.25, -0.25, 0.75, 0.75, 0.75, 0.75, 0.75, 0.0, -0.25, 0.25, 0.75, 0.5, 0.75, 0.0, 1.0, 1.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.5, 0.25, 1.0, -0.25, 0.75, -1.0, ]);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
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
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    
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
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer105.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    
    const array11 = new Float32Array([0.5, 0.5, 0.25, 0.25, 0.0, 0.0, 0.25, -0.25, 0.75, 0.25, -0.75, 0.0, -0.25, 0.5, 0.5, 0.25, 0.5, 0.5, 1.0, 0.5, -0.25, -0.75, 0.0, 0.25, -0.5, -0.25, -0.75, -0.75, -0.75, -0.25, -0.5, -0.5, -1.0, 0.5, 0.5, 0.5, 1.0, 1.0, -1.0, -0.25, -1.0, -0.5, -0.5, -0.5, 0.75, 1.0, -0.25, -1.0, -0.75, 1.0, -0.5, 0.5, -0.5, -0.25, 0.5, -0.5, -0.25, 0.75, 0.5, 0.5, -0.75, 0.0, -0.5, 1.0, 1.0, -0.75, 0.5, -0.75, 0.0, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, -0.75, -0.75, -0.25, 0.75, 0.5, -0.75, 0.25, 0.25, -0.25, 0.5, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, -0.5, 0.75, 0.5, -0.25, -0.5, -1.0, 0.0, ]);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    
    device10.queue.submit([command_buffer103, ]);
    texture201.destroy();
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    
    
    command_encoder104.clearBuffer(buffer101);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query101.destroy()
    
    texture202.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    render_bundle_encoder101.popDebugGroup();
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
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
        occlusionQuerySet: query100
    });
    query102.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
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
    render_pass_encoder1040.executeBundles([render_bundle_encoder100, ])
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    device50.pushErrorScope("validation");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const array12 = new Float32Array([-1.0, 0.0, -0.25, 0.5, -0.5, 1.0, -0.75, 0.25, 0.75, 1.0, -0.75, 0.0, 0.75, 0.25, 0.25, -0.75, 0.25, -0.5, -0.75, -1.0, 0.25, -0.5, -0.25, 1.0, -0.25, -1.0, 0.75, 0.5, -1.0, -0.25, 0.75, 0.5, 1.0, 0.25, -0.75, 0.0, -0.25, -0.75, 0.5, -0.5, -1.0, 0.25, 0.0, 1.0, 0.75, 0.5, -0.5, 0.75, -1.0, -0.25, 0.75, 0.25, 1.0, 0.75, 0.75, 0.25, 0.5, 0.75, -0.75, 1.0, 1.0, 0.5, -0.75, -0.75, 0.5, 0.75, 0.5, 1.0, -0.5, -1.0, 0.5, 1.0, -0.5, 0.75, 1.0, -1.0, 0.25, 1.0, 0.75, 0.0, -1.0, 0.5, 0.25, -0.25, 0.25, 1.0, -0.75, -0.5, 0.5, -0.5, 0.5, -0.5, -0.25, -1.0, -0.5, -0.25, -0.25, 1.0, -0.5, -0.25, ]);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
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
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.popDebugGroup();
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    buffer103.destroy()
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1060.setPipeline(render_pipeline102);
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    texture204.destroy();
    buffer107.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer109, 0);
    
    
    
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group104);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer109,
        0
    )
    
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    query100.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
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
    render_pass_encoder1061.executeBundles([])
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1060.popDebugGroup();
    
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer1010, 0, array8, 0, array8.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query501.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder2010.popDebugGroup();
    
    render_pass_encoder1061.setPipeline(render_pipeline108);
    
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1061.setStencilReference(1);
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder1070.setPipeline(render_pipeline109);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    render_pass_encoder1061.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    
    
    render_pass_encoder2020.setStencilReference(1);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    texture700.destroy();
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer108, 0, array7, 0, array7.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    texture205.destroy();
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    compute_pass_encoder2000.popDebugGroup()
    
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline109.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group105);
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_pass_encoder1000.setPipeline(render_pipeline108);
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group106);
    buffer500.destroy()
    buffer501.destroy()
    render_bundle_encoder102.setVertexBuffer(0, buffer1014);
    buffer1012.destroy()
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query104.destroy()
    buffer106.destroy()
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    render_bundle_encoder101.setVertexBuffer(0, buffer105);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device70.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1070.setVertexBuffer(0, buffer107);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.setVertexBuffer(0, buffer109);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    compute_pass_encoder1000.end();
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1070.draw(3);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder1070.end();
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group107);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group108);
    render_pass_encoder1060.end();
    compute_pass_encoder2010.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder1000.setVertexBuffer(0, buffer103);
    render_pass_encoder1000.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.drawIndexed(3);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder2001.setPipeline(compute_pipeline200);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group202);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1010);
    compute_pass_encoder1000.popDebugGroup()
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group1011);
    render_pass_encoder1061.setVertexBuffer(0, buffer1014);
    render_pass_encoder1061.drawIndirect(buffer108, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1026, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.end();
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1060.draw(3);
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    render_pass_encoder1000.end();
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1061.end();
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder1040.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer208);
    render_pass_encoder1061.end();
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2011, 0);
    const command_buffer202 = command_encoder202.finish();
    const command_buffer107 = command_encoder107.finish();
    compute_pass_encoder2010.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer109, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.end();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.setIndexBuffer(buffer1018, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2012, 0);
    command_encoder201.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1070.setIndexBuffer(buffer108, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2013, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1061.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder1061.drawIndirect(buffer109, 0);
    const command_buffer201 = command_encoder201.finish();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2014, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2014, 0);
    device70.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2001.end();
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer104, ]);
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.end();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder1040.end();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1060.drawIndexed(3);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder1060.drawIndirect(buffer1027, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device70.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder2020.draw(3);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.drawIndirect(buffer1010, 0);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1060.end();
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    compute_pass_encoder1040.end();
    render_pass_encoder1061.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1070.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1040.end();
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group206);
    render_pass_encoder1070.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1070.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder1060.end();
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1070.drawIndirect(buffer109, 0);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.draw(3);
    render_pass_encoder1070.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder1020.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    render_pass_encoder1040.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder2000.end();
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1070.end();
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([]);
    render_pass_encoder2010.draw(3);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer106, command_buffer107, ]);
    compute_pass_encoder1020.end();
    render_pass_encoder1061.setIndexBuffer(buffer107, "uint16");
    device70.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, command_buffer104, command_buffer105, ]);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group209);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1070.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder1020.end();
    render_pass_encoder1061.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2027, 0);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    device20.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    device50.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder2020.draw(3);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1013);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder1070.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1040.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1070.endOcclusionQuery()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2030, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder2020.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1035, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1040.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2031, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    device70.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder1040.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1070.drawIndirect(buffer1025, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1011, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder2020.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2034, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2034, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1070.drawIndirect(buffer1019, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1040.end();
    device20.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndirect(buffer101, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer103, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device60.queue.submit([]);
    render_pass_encoder1040.end();
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder2020.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1070.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    device20.queue.submit([]);
    render_pass_encoder1070.drawIndirect(buffer1032, 0);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder1060.end();
    compute_pass_encoder2001.end();
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1000.end();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1061.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2015);
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1061.drawIndirect(buffer1032, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    render_pass_encoder2020.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1027, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2042, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device40.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.end();
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2016);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder1070.setIndexBuffer(buffer1034, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2045, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2046, 0);
    render_pass_encoder1061.drawIndirect(buffer1011, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder2001.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1044, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndirect(buffer1028, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1045, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder1070.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder1070.drawIndirect(buffer102, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.end();
    render_pass_encoder1070.drawIndirect(buffer1017, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1028, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder2001.end();
    render_pass_encoder1070.setIndexBuffer(buffer1030, "uint16");
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder1040.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1040.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1032, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder2020.end();
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1032, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.popDebugGroup();
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1051, 0);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1019);
    device20.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2010.drawIndirect(buffer2048, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2050,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2017);
    render_pass_encoder1040.drawIndexedIndirect(buffer109, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2051, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1055, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.drawIndirect(buffer1048, 0);
    compute_pass_encoder1040.popDebugGroup()
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    compute_pass_encoder1000.popDebugGroup()
    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2055,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2019);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1017, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer2045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1070.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder1040.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1049, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2056, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1020);
    render_pass_encoder2010.drawIndexedIndirect(buffer2051, 0);
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2020);
    render_pass_encoder1060.setIndexBuffer(buffer1054, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1020.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.end();
    compute_pass_encoder2000.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2059, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2059, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    device70.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1047, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1061.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.end();
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder2020.drawIndirect(buffer2047, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder1040.drawIndirect(buffer1048, 0);
    render_pass_encoder1070.end();
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1070.drawIndirect(buffer104, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    compute_pass_encoder2001.end();
    device20.queue.submit([command_buffer200, ]);
    device50.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2020.drawIndirect(buffer2059, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2048, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1060.end();
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2022);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2023);
    render_pass_encoder1070.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device70.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2027, "uint16");
    device20.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1070.setIndexBuffer(buffer1054, "uint16");
    device70.queue.submit([]);
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder2001.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1021);
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1070.popDebugGroup();
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    render_pass_encoder1070.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1061.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    compute_pass_encoder1000.end();
    compute_pass_encoder2010.end();
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1070.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2067, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2067, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1027, "uint16");
    device10.queue.submit([command_buffer103, ]);
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2025);
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    render_pass_encoder2020.drawIndirect(buffer2051, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    compute_pass_encoder2000.end();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1070.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    compute_pass_encoder2010.end();
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2026);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1000.end();
    render_pass_encoder1061.drawIndirect(buffer101, 0);
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2027);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2030, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2076, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2076, 0);
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1024);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder1061.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1068, 0);
    device50.queue.submit([]);
    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2078,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2028);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1069, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2080,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2029);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2076, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1070.end();
    render_pass_encoder2010.drawIndirect(buffer2056, 0);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    device20.queue.submit([command_buffer201, ]);
    device70.queue.submit([]);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder1060.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.end();
    device70.queue.submit([]);
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer101, ]);
    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1071,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1058, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder2010.popDebugGroup();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2081, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2081, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder1070.setIndexBuffer(buffer1053, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.end();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2082, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2082, 0);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1070.drawIndirect(buffer1010, 0);
    device70.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1070.end();
    device00.queue.submit([]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    device70.queue.submit([]);
    render_pass_encoder1000.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2010.drawIndirect(buffer2067, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1040.drawIndirect(buffer1065, 0);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder1061.drawIndirect(buffer1042, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1026);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2083, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2083, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder2010.end();
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1032, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2084, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2084, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1060.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2048, 0);
    compute_pass_encoder1040.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1048, 0);
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
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1027);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer1069, 0);
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2030);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1070.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2040, 0);
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    render_pass_encoder2020.drawIndexedIndirect(buffer2063, 0);
    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2088,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2031);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1069, "uint16");
    device70.queue.submit([]);
    render_pass_encoder2020.setIndexBuffer(buffer2066, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2089, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2089, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    device50.queue.submit([]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1060.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2091,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2032);
    device10.queue.submit([command_buffer106, ]);
    device70.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2083, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1067, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2092, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2092, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1079,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1029);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer105, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1080, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1080, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer105, ]);
    device30.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndirect(buffer1056, 0);
    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2094,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2033);
    render_pass_encoder1000.drawIndexed(3);
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
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1030);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2076, 0);
    render_pass_encoder1070.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1061.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    device20.queue.submit([]);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder1061.drawIndirect(buffer1038, 0);
    render_pass_encoder1040.drawIndirect(buffer1032, 0);
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
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1060.end();
    render_pass_encoder1060.end();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1061.drawIndirect(buffer1068, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1084, 0);
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1031);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2010.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2089, 0);
    render_pass_encoder1061.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1087, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1087, 0);
    device60.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1050, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1088, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1089, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1089, 0);
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndirect(buffer1068, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer1019, 0);
    render_pass_encoder1061.drawIndirect(buffer109, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2095, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2095, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1040.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder1060.drawIndirect(buffer1027, 0);
    compute_pass_encoder2010.end();
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
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1032);
    render_pass_encoder1070.drawIndirect(buffer1057, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1092, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1092, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1033);
    device60.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder2020.drawIndirect(buffer2082, 0);
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1034);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2096, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2096, 0);
    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2098,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2034);
    compute_pass_encoder2001.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1064, 0);
    device10.queue.submit([]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2099, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2099, 0);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.setIndexBuffer(buffer1076, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2095, 0);
    render_pass_encoder2010.drawIndirect(buffer2047, 0);
    render_pass_encoder2010.drawIndirect(buffer2047, 0);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder1070.drawIndirect(buffer103, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2084, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1068, 0);
    device20.queue.submit([]);
    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20101,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2035);
    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20103,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2036);
}