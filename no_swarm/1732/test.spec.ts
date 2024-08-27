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
    const array0 = new Float32Array([-0.5, 0.25, 0.25, 1.0, 1.0, 0.5, 0.25, 0.25, 0.75, -1.0, -0.75, 0.25, -0.5, 0.5, -0.25, 1.0, 0.25, 0.75, 1.0, 0.0, 0.5, 0.0, 0.25, -0.75, 1.0, 0.75, 1.0, -1.0, 0.25, -1.0, -0.75, 0.5, -1.0, 0.25, -1.0, 0.5, 0.0, -0.25, -0.75, 0.25, -0.75, -0.5, 0.5, -0.25, -0.75, -0.75, 0.25, -0.75, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, -0.5, 1.0, 0.0, 1.0, -0.25, 0.75, 0.75, -0.25, -0.75, 0.75, -0.25, 0.5, 0.75, 0.5, -0.5, -0.75, 0.0, 0.75, 0.75, -0.5, 0.75, 0.5, 0.25, -0.5, 0.5, 0.0, 0.75, 0.5, 1.0, -0.5, -0.5, -0.75, -0.5, -0.25, -0.5, 0.5, -0.25, -0.75, -1.0, -0.25, -1.0, 1.0, -0.5, -0.75, -1.0, -0.75, ]);
    
    const array1 = new Float32Array([0.0, 1.0, -1.0, -0.5, -0.75, 0.75, 1.0, -0.5, -0.75, -0.5, -0.25, -0.75, 0.5, -1.0, -0.25, 0.25, 0.5, -0.75, 1.0, -0.75, -0.5, -0.5, 0.75, 1.0, 1.0, -1.0, -0.5, -0.75, 0.25, 0.25, 0.75, -1.0, 0.75, -0.75, -0.75, 0.0, -0.5, 0.25, 0.25, -0.5, 1.0, 0.5, 1.0, 0.5, 0.5, -1.0, 0.75, -0.5, -0.75, 0.75, 1.0, -0.25, 0.5, 0.75, 0.0, -0.75, 0.5, 0.5, -0.75, -1.0, -1.0, 1.0, -1.0, 0.25, -0.5, 1.0, 0.75, 0.75, 0.0, -0.75, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, -0.25, 0.0, -0.5, -0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.0, -0.5, 0.75, -0.75, -1.0, -0.5, 0.0, -0.25, 0.0, 0.25, -1.0, -0.75, 0.5, 0.5, 0.0, ]);
    
    const array2 = new Float32Array([-1.0, -0.25, -0.5, 1.0, 0.75, 1.0, 0.0, -0.25, -0.75, 1.0, -0.5, -0.5, 0.0, 1.0, -0.5, 0.75, 0.5, -0.25, -0.75, 0.25, 0.75, 0.0, 0.75, 0.75, 1.0, 0.5, 0.25, -1.0, 1.0, 0.75, -0.75, 0.5, -0.5, -0.5, 1.0, 1.0, -1.0, -1.0, 0.0, 1.0, -0.75, 0.75, -0.5, 0.75, 0.75, 0.0, 0.75, -1.0, -0.25, -0.5, -0.5, 0.75, 0.75, 0.75, -1.0, -1.0, -1.0, -0.25, 0.5, 0.0, 1.0, 0.75, 0.0, -0.5, 0.25, -0.5, -0.5, -0.25, -0.25, -0.75, -0.25, -1.0, 0.5, 0.0, -0.25, -0.5, -0.25, -0.5, -0.75, 0.75, 0.0, 1.0, 1.0, 0.5, -0.5, 0.25, 0.25, -1.0, 0.75, -0.75, 0.25, 0.75, -0.25, 0.25, 0.75, 0.25, 0.25, -0.5, -0.75, -1.0, ]);
    
    
    
    const array3 = new Float32Array([-0.25, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, -1.0, -0.25, -0.25, 0.25, 0.5, 1.0, -1.0, -1.0, -0.5, -1.0, 0.5, 0.75, 0.0, -0.25, 0.25, -0.75, 1.0, -0.5, 0.0, -0.25, 0.75, -0.25, 0.25, -0.75, -0.75, 1.0, -0.5, -1.0, -0.25, -0.25, 1.0, -0.5, -0.75, 0.0, 0.75, -1.0, -0.25, -1.0, 0.25, 1.0, 0.5, 0.75, 1.0, -0.5, 0.0, -0.75, 0.25, 0.0, -1.0, 0.5, -0.75, 0.5, 0.25, 0.0, -1.0, -0.25, 1.0, 0.0, 0.25, -0.5, 1.0, 0.75, 0.25, 0.5, -0.75, -0.25, 0.5, 1.0, -0.75, -0.5, 1.0, -0.75, 0.5, 1.0, -0.75, -0.25, 0.5, -0.5, -0.75, -1.0, 0.0, 0.75, -0.25, 0.5, 0.25, -0.75, 0.25, -1.0, -0.5, 0.75, -1.0, -0.25, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array4 = new Float32Array([0.5, 0.25, 0.75, 0.25, 0.5, 0.5, 0.25, -1.0, 0.5, -0.75, 1.0, 1.0, -0.75, 0.25, -1.0, 0.75, -0.75, 1.0, -0.75, -1.0, 0.25, 0.5, 0.0, 0.75, -0.5, 0.0, -0.75, 0.75, -0.5, 0.75, -0.25, 0.5, -1.0, -0.25, 0.25, -0.5, 0.25, -0.25, 0.75, -1.0, -0.5, 0.0, -0.25, 0.5, 0.5, -1.0, 0.0, 0.75, -0.25, 0.75, -0.5, -0.5, -0.75, -0.5, 0.5, 0.75, 0.25, -0.5, 0.0, -0.75, -1.0, 0.25, 0.75, 0.75, 0.5, 0.25, -1.0, -0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 0.0, 0.25, 0.25, -0.25, 0.75, -0.5, 0.5, -0.75, 0.25, -0.5, 0.0, -0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 1.0, -1.0, 0.75, -0.25, 1.0, 0.75, 0.75, -0.75, -0.75, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    buffer100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.25, -0.75, 0.0, 0.5, 0.75, -0.75, 0.25, 1.0, 1.0, -0.25, -1.0, 0.0, -0.75, 0.25, 0.75, 0.5, 1.0, 0.25, 0.0, -1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.0, 0.75, 0.25, 1.0, 0.0, 0.75, 0.5, 0.0, 1.0, -0.75, -0.5, 0.0, -1.0, 1.0, 0.5, 0.0, 0.25, -0.5, -1.0, 1.0, -0.75, 0.0, 0.75, 1.0, 0.0, 0.75, 0.25, 0.0, -1.0, 0.0, 0.5, 0.75, 0.25, -1.0, 0.75, -0.25, 0.5, 0.0, 0.75, -0.75, 0.25, 0.25, 1.0, 0.25, 0.25, -0.25, 0.5, 0.5, 0.75, -1.0, -0.75, -0.75, 1.0, -0.25, -0.75, 0.5, -0.25, -1.0, -0.5, 0.0, 0.5, -0.5, -0.5, -0.25, 0.5, 1.0, -0.75, -0.5, -0.75, -0.5, 0.5, 0.25, 0.75, -0.5, 0.0, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array6 = new Float32Array([0.0, -1.0, 1.0, -0.5, 0.75, -1.0, 0.0, -0.5, 0.5, -1.0, -0.25, 0.75, 0.5, 0.25, -0.5, 1.0, -0.75, 0.5, -0.25, -0.25, -0.75, 0.75, 0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.75, 0.75, 0.75, -0.5, 0.25, 0.0, 0.25, 0.75, 0.0, -1.0, 0.5, 1.0, 1.0, -1.0, -0.25, -1.0, 0.75, -0.5, -1.0, 1.0, -0.25, -0.25, -1.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.25, -1.0, 0.75, -0.5, -0.5, -0.75, -0.5, -0.5, 1.0, -0.75, 0.75, -0.75, -0.75, -0.5, -0.5, -1.0, -0.75, -0.75, -0.75, -0.75, -0.75, 0.75, -0.75, -0.75, 0.0, 0.0, 1.0, 1.0, 0.75, 0.0, 1.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.75, -0.5, -0.5, 0.75, 0.5, 0.25, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer100.destroy()
    const array7 = new Float32Array([-0.5, 0.5, 0.75, 1.0, 0.5, -0.25, 1.0, 0.0, 0.0, -0.5, 0.25, -0.25, -0.5, -0.5, -0.25, 0.75, -0.75, 0.5, -1.0, 0.75, 0.25, 0.0, 0.5, -0.75, -0.5, -1.0, -0.75, 0.5, 0.5, 0.0, -0.5, 1.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.5, -0.25, 0.75, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, 0.0, 1.0, 0.25, -0.75, -1.0, -0.25, 1.0, 0.75, -0.25, -0.25, 0.75, 0.0, 1.0, 0.5, -0.75, -0.75, 0.5, 1.0, 0.5, 0.0, 0.75, 0.0, 0.0, -0.25, 1.0, -0.75, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, 0.75, 0.75, 0.5, 0.0, 1.0, 1.0, 0.75, 1.0, 0.0, 0.75, -0.25, -0.75, -0.75, 0.0, -0.75, 1.0, 1.0, 0.5, 0.0, -1.0, -1.0, -1.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const array8 = new Float32Array([-0.75, -0.75, 0.75, -1.0, 0.75, -0.5, -0.75, -0.75, 0.75, 0.0, -0.5, 0.75, 1.0, -0.25, 1.0, 1.0, 0.0, 1.0, -0.75, -1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.5, -0.5, 0.5, -0.25, 0.75, 0.25, -1.0, -1.0, -0.5, 0.0, 0.25, 0.0, -0.5, 0.0, -0.75, 0.0, 1.0, -0.75, -1.0, 0.25, -0.5, -0.5, 0.5, 0.75, -0.25, 0.25, -0.75, 0.0, -0.75, -0.5, 0.75, 0.25, -0.75, -0.75, -1.0, 1.0, -0.25, 0.75, -0.25, -0.25, 0.0, -1.0, 0.25, -0.5, -0.25, -0.25, 0.0, 0.5, 0.25, 0.75, 1.0, -0.5, -0.75, 0.25, 0.25, 0.0, 0.5, -1.0, -0.5, -0.5, -1.0, 0.75, -0.5, -1.0, 1.0, 0.75, -0.75, 0.0, 1.0, 0.75, -0.25, -1.0, -0.5, -0.5, 0.75, ]);
    device10.pushErrorScope("internal");
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder100.insertDebugMarker("mymarker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    
    render_bundle_encoder100.popDebugGroup();
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device30.pushErrorScope("internal");
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const array9 = new Float32Array([-0.25, -0.75, 0.5, -0.25, 0.25, -0.75, 0.5, -0.75, 1.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.75, 0.25, 0.0, -0.75, 0.25, -0.5, 0.5, 0.75, -0.5, 0.25, 0.75, 0.75, -0.25, 0.0, 0.5, 0.5, 1.0, 0.75, 0.5, -0.25, -0.75, -0.25, -0.25, -0.75, 0.0, -0.5, -0.25, -0.25, -0.5, -0.5, -0.75, 0.75, 0.25, -1.0, 0.75, 1.0, -0.25, 0.75, 0.5, -0.5, 0.25, 0.0, 0.25, 0.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.75, 0.5, -1.0, -0.25, 0.25, 0.75, 0.5, 0.25, -0.5, 0.5, 0.5, 1.0, -0.25, -1.0, 0.0, 0.5, 0.75, -0.25, 0.75, -0.25, 0.25, -0.75, 1.0, 0.25, -0.25, 0.5, 0.0, -0.5, 0.0, -0.25, 0.25, 0.5, -0.75, -0.25, -0.25, 0.5, 0.5, ]);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1000.popDebugGroup()
    command_encoder100.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("internal");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query101.destroy()
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    
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
    query100.destroy()
    const command_buffer101 = command_encoder101.finish();
    
    const array10 = new Float32Array([0.0, 0.5, 0.75, -1.0, 0.5, 1.0, 0.5, 0.25, 0.5, 0.5, -0.25, -0.25, -0.5, 0.75, 0.75, -0.5, -1.0, -0.5, 1.0, 1.0, 0.75, -0.5, -0.75, 1.0, 1.0, -0.75, -0.25, 0.5, 0.0, 1.0, -0.25, -0.75, 0.5, 1.0, -0.25, 0.5, -0.5, -0.75, 0.0, 0.75, 0.5, -0.5, 0.5, -0.25, 0.5, -0.25, -0.5, -1.0, 1.0, 0.5, 0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 1.0, 0.75, -0.25, 1.0, 0.25, 0.5, 1.0, 1.0, 0.75, 0.75, -0.75, 0.75, 0.5, 0.25, -0.25, 0.75, 0.5, 0.25, 0.0, -0.25, 0.25, -0.75, 1.0, -0.75, 0.75, 0.75, 0.5, 0.75, 0.5, -0.5, -1.0, 0.0, -0.75, -0.5, -0.75, 0.5, 0.5, -0.75, 0.75, 1.0, 0.75, -1.0, -1.0, 1.0, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer103.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer300.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
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
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const array11 = new Float32Array([-0.75, 0.5, -0.25, 0.75, -1.0, 0.75, -0.5, 0.75, 0.25, 0.0, -0.5, 0.5, 1.0, 0.75, -0.25, 0.25, 0.5, 0.0, 0.5, 0.75, 0.0, 0.0, -1.0, 0.25, -0.25, 0.25, -1.0, 0.5, 0.5, 1.0, -0.25, -0.25, -0.75, -0.75, 1.0, 0.5, 1.0, 0.0, 1.0, 0.75, 0.25, -0.25, 0.5, 0.75, 0.5, 0.25, 1.0, -0.5, 0.75, 0.25, 0.75, -1.0, -0.25, 0.25, 0.75, 0.75, -0.75, 0.75, 0.0, 0.75, 0.0, 0.75, -0.5, -0.5, -0.75, 0.75, 0.75, 1.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.5, -0.75, 0.75, -1.0, -1.0, 0.25, -0.75, 0.0, -1.0, 0.0, -0.5, 0.0, 0.25, -1.0, -1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.25, 0.75, -0.5, 0.25, -0.25, 0.5, -0.75, ]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device10.queue.submit([command_buffer101, ]);
    
    device20.pushErrorScope("validation");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array12 = new Float32Array([-0.25, -1.0, -0.25, 0.25, -1.0, 0.0, 0.75, 0.75, 0.5, -0.25, -0.75, 0.25, 1.0, -0.5, 0.5, 1.0, 0.5, 0.0, 0.25, 0.75, 0.25, -1.0, -0.25, -0.75, 0.5, -0.25, 0.75, -0.5, 0.75, 0.75, -0.5, 0.5, 0.25, -1.0, 0.75, 0.5, 1.0, 0.25, 0.0, 0.0, 0.75, 0.5, 0.25, -1.0, -1.0, 0.25, 0.25, 0.25, -1.0, -0.5, -0.25, -1.0, 0.25, 0.0, -0.25, 0.25, 0.75, -0.25, 0.25, 0.75, -0.75, -0.5, 0.75, -0.25, -0.75, -0.25, -0.75, -0.75, 0.75, 0.0, 1.0, 0.5, 0.75, -1.0, -0.25, -1.0, 0.0, 0.5, 0.25, -1.0, -0.75, 0.25, 1.0, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -0.5, -0.5, -0.25, -0.5, 1.0, 0.5, -0.25, -0.25, 0.75, 0.5, 0.75, ]);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.popDebugGroup();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    buffer102.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.submit([command_buffer200, ]);
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer104, 0, array12, 0, array12.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
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
        occlusionQuerySet: query100
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query300.destroy()
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture400.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer104, 0, array12, 0, array12.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_bundle_encoder103.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder103.setPipeline(render_pipeline103);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder103.setBindGroup(0, bind_group101);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer105, 0, array12, 0, array12.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer104, 0, array12, 0, array12.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer105, 0, array12, 0, array12.length);
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group103);
    command_encoder102.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    device30.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    texture300.destroy();
    render_bundle_encoder200.popDebugGroup();
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
    
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3000.executeBundles([])
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.setPipeline(render_pipeline201);
    
    render_bundle_encoder103.popDebugGroup();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    device10.queue.writeBuffer(buffer107, 0, array9, 0, array9.length);
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2010.setPipeline(render_pipeline200);
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    buffer109.destroy()
    
    query300.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    render_pass_encoder4000.pushDebugGroup("group_marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeTexture({ texture: texture300 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setPipeline(render_pipeline102);
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
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
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group104);
    
    render_bundle_encoder102.setVertexBuffer(0, buffer108);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer104, 0, array9, 0, array9.length);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const array13 = new Float32Array([-0.5, -0.5, -0.25, 0.75, 1.0, 0.25, -0.75, -0.5, 0.5, 0.0, -1.0, -0.25, -0.5, 0.5, 0.0, 1.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, -0.5, 0.5, -0.25, 0.25, 0.0, -0.5, -0.5, -0.25, -0.75, 0.75, 1.0, 0.25, 1.0, 1.0, 0.75, 0.25, 0.75, 0.75, -1.0, 0.75, -0.25, 0.75, -0.75, 0.75, -0.75, -0.5, 0.25, -1.0, -0.5, 0.75, -0.75, 0.5, 0.75, -0.25, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, 0.5, 0.25, -1.0, -0.75, 0.0, 0.25, 0.25, -0.5, -0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 0.75, 0.25, 0.0, 0.25, 0.0, 1.0, 0.5, 0.0, -0.5, -0.5, -1.0, 0.25, -0.75, -0.25, 0.0, 0.5, 0.75, 0.75, 1.0, 0.75, 0.75, -0.5, -0.75, -0.5, ]);
    buffer201.destroy()
    render_bundle_encoder101.setVertexBuffer(0, buffer1011);
    buffer106.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
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

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    buffer1012.destroy()
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer104, 0, array10, 0, array10.length);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_pass_encoder4000.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder4000.setStencilReference(1);
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline202);
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array10, 0, array10.length);
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder203.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    buffer203.destroy()
    render_pass_encoder3000.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder101.draw(3);
    render_bundle_encoder100.popDebugGroup();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    
    render_bundle_encoder100.popDebugGroup();
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
        occlusionQuerySet: query100
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query101.destroy()
    render_pass_encoder4000.popDebugGroup();
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.queue.writeBuffer(buffer202, 0, array13, 0, array13.length);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer104.destroy()
    render_bundle_encoder102.drawIndirect(buffer103, 0);
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array12, 0, array12.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group105);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([]);
    render_pass_encoder1021.setPipeline(render_pipeline103);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.end();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1020.draw(3);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group106);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.setVertexBuffer(0, buffer104);
    render_pass_encoder1021.setVertexBuffer(0, buffer104);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1021.draw(3);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder4000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    command_encoder102.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder2010.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    device40.queue.submit([]);
    const command_buffer501 = command_encoder501.finish();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    command_encoder500.popDebugGroup()
    command_encoder100.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.draw(3);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
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
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1021.draw(3);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.drawIndexed(3);
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    device40.queue.submit([]);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder1020.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2010.draw(3);
    device40.queue.submit([]);
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder5010.popDebugGroup();
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.draw(3);
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
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder5010.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    render_pass_encoder5011.endOcclusionQuery()
    render_pass_encoder1021.draw(3);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    device40.queue.submit([command_buffer401, ]);
    device50.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder1000.end();
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    device10.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder2010.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1023, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder3000.popDebugGroup();
    device40.queue.submit([]);
    device30.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.end();
    device30.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder1021.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer100, ]);
    const command_buffer500 = command_encoder500.finish();
    device40.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder5010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder5011.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    device20.queue.submit([]);
    render_pass_encoder5010.endOcclusionQuery()
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.end();
    device10.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1020.end();
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder5000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.end();
    device30.queue.submit([]);
    render_pass_encoder1000.end();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder5011.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder3000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.end();
    render_pass_encoder2010.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
}