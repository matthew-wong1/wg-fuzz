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
    const array0 = new Float32Array([-0.25, 0.75, -0.75, -1.0, -1.0, 0.0, -0.5, -0.75, 0.5, -0.25, 1.0, -0.5, 0.75, -1.0, 0.5, -1.0, -1.0, -0.5, -0.5, -0.25, -0.25, -0.5, 0.0, -0.25, -0.5, -0.5, 0.75, 0.25, 0.75, 0.75, 0.25, 0.0, -0.5, -1.0, -1.0, -1.0, -1.0, -0.5, 1.0, -0.25, 0.25, 0.25, -0.5, 0.0, 0.25, -0.75, -0.5, -0.5, 0.75, 1.0, 0.75, -1.0, -0.75, 1.0, 1.0, -0.5, 1.0, 0.75, 0.0, -0.25, -0.5, -1.0, -0.5, -0.25, -1.0, -1.0, 0.75, 1.0, -0.5, 0.75, -1.0, 0.25, 0.25, -0.25, -1.0, -0.5, -0.5, -0.25, -0.25, 0.75, -0.5, -0.5, 0.5, -0.25, -0.25, -0.25, -0.25, -0.5, -1.0, -0.25, 0.0, -0.5, -1.0, 0.25, -0.5, -1.0, -0.75, 1.0, -0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.75, -1.0, 1.0, 1.0, 0.5, 0.75, 0.5, -0.75, 0.0, -0.75, -0.75, 0.5, -1.0, 0.5, -1.0, -0.5, 1.0, -0.5, -0.5, -0.5, -0.75, -1.0, 0.25, 1.0, 0.75, 0.75, -0.25, 0.25, -0.25, 0.5, 1.0, -0.75, -0.75, -0.75, -1.0, -1.0, 1.0, -0.5, -0.25, 0.75, -0.75, 0.75, -0.5, 1.0, 0.75, -0.25, 1.0, -0.5, 0.0, -0.75, -0.5, 0.0, 1.0, 1.0, 0.5, -0.75, -1.0, 1.0, 0.0, -0.25, -0.25, -0.75, -0.25, -0.25, 0.75, 0.5, 0.25, 0.0, 1.0, 0.5, -0.5, 0.5, -1.0, -0.5, -0.25, 1.0, -0.75, -0.5, -0.25, -0.75, -0.75, -0.75, -0.25, 0.5, 0.5, 0.25, -0.25, 0.75, -0.75, 0.0, -1.0, -0.5, 1.0, 0.25, -0.75, -0.25, -0.25, 0.25, 0.5, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([1.0, -0.25, 0.25, 0.25, 1.0, -0.5, 0.75, 0.0, 0.25, 0.75, 0.75, 0.5, 0.0, 0.5, -0.75, -0.75, 1.0, 0.75, -0.25, 0.5, 0.25, 0.0, 1.0, 0.75, 0.0, 0.75, 0.25, 1.0, -1.0, 0.0, -0.5, 0.25, -0.5, 0.0, -0.5, 1.0, -0.75, 0.0, 0.0, 0.75, -1.0, -0.25, 0.75, 0.0, -0.75, -0.25, -0.25, -0.75, 0.75, -1.0, -0.25, 0.25, -1.0, -0.25, 0.25, 0.75, -0.25, 0.75, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 0.0, -0.5, 0.5, 0.5, 0.75, -0.75, -0.5, 0.5, -0.5, 0.75, 0.0, 0.0, 0.5, 0.5, -0.75, 0.25, 0.75, -1.0, -0.75, -0.75, -1.0, 0.5, -0.5, 0.5, 0.0, -1.0, 0.75, -0.25, -0.75, 0.75, -1.0, 1.0, -0.5, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.queue.submit([]);
    device20.destroy();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    
    
    
    
    
    const array3 = new Float32Array([-1.0, 0.75, 0.5, -0.75, -0.75, 1.0, -0.75, 0.75, -0.25, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, 0.5, -0.75, 0.25, 0.25, 1.0, 0.5, -0.25, 0.5, -0.5, 0.0, 0.75, 0.75, 0.75, 1.0, -1.0, -0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 0.0, -0.5, 0.0, 0.75, 0.25, -0.75, 0.75, 0.0, -0.75, -1.0, -0.25, -0.25, 0.0, -0.5, -0.25, -0.25, 1.0, -0.25, 0.75, -1.0, 0.0, 0.0, 0.75, 0.75, 0.5, -0.5, -1.0, -0.5, -0.5, -1.0, -0.5, -1.0, 0.25, -0.5, 0.0, 1.0, -1.0, 0.75, 0.25, -0.75, 0.75, -0.75, -1.0, -0.5, 0.75, 0.75, 0.5, -0.25, -0.25, 0.5, 1.0, -1.0, 0.5, 0.5, -0.5, 1.0, 0.5, -1.0, 1.0, 0.5, 0.75, -0.5, 0.0, -0.5, ]);
    
    
    const array4 = new Float32Array([1.0, -0.5, 0.25, 1.0, -0.75, -0.25, 0.0, -0.25, 0.0, 0.25, -0.75, -1.0, -0.75, 1.0, 0.25, 0.5, -0.75, 1.0, -0.5, -0.75, 0.0, -0.25, 1.0, -1.0, 0.25, -1.0, 1.0, -0.5, 0.0, 0.75, -0.5, 1.0, 0.25, -0.25, 0.0, -0.5, 0.0, 0.5, -0.25, 1.0, -0.25, -0.25, -0.75, -0.5, -0.75, -1.0, -0.25, 0.75, 0.25, -1.0, 0.5, -0.25, -0.75, 0.5, 0.5, 1.0, 0.0, 0.0, 0.25, -0.75, 1.0, 0.25, 0.75, -1.0, 0.25, -0.5, -1.0, 0.75, 0.75, -0.75, -1.0, -0.75, 0.5, -0.5, -0.75, 0.5, 0.5, -1.0, 1.0, -0.25, -0.75, 0.0, 0.5, -0.5, 0.25, -0.75, 1.0, 1.0, 0.75, 0.0, 1.0, 0.75, 0.0, -0.75, -0.5, 0.25, -0.75, 0.0, 0.25, -0.25, ]);
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
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
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([1.0, -0.25, -0.5, -0.25, -0.25, -0.5, -0.25, 0.0, -0.5, 0.25, 0.75, 1.0, 0.25, 0.25, -0.25, -0.5, -0.25, -0.5, 1.0, 0.25, 0.5, 0.0, -0.75, -0.25, 0.25, 0.25, 1.0, -1.0, -0.75, 1.0, 0.0, -1.0, -0.75, 0.75, 1.0, 0.75, -0.5, -1.0, -0.25, 0.75, 0.75, 0.75, 0.75, 0.0, -0.25, 0.75, 1.0, 0.5, -1.0, 0.0, -0.25, -0.25, 1.0, -0.25, 0.25, 0.25, 0.25, -0.25, -0.75, 0.25, 0.5, -0.5, -1.0, 0.25, 0.75, -0.25, 0.75, 0.5, -0.25, 0.5, 0.5, 0.25, -0.75, 0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 0.75, -0.5, 0.5, 0.25, 0.75, 0.0, 0.75, 1.0, 1.0, -1.0, -0.5, -0.75, 1.0, 0.25, 0.0, 0.75, -0.5, 0.5, -0.5, 0.25, 0.75, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const array6 = new Float32Array([-1.0, 0.75, 0.75, -0.75, 0.75, -0.25, -1.0, -0.25, -0.75, -0.75, 0.0, -0.5, 1.0, 0.25, 0.75, -0.75, -0.5, -0.5, -0.5, -0.25, 0.5, -0.25, 1.0, 1.0, 1.0, -0.75, -1.0, 1.0, -1.0, -0.75, 0.75, 0.25, 0.75, 1.0, 0.0, 0.75, -0.5, -1.0, -0.75, 0.5, 0.5, -0.5, -0.25, 1.0, -1.0, 0.75, -0.25, 0.0, 0.5, 0.25, 0.0, -0.5, -0.5, -0.5, 0.25, -0.75, 0.0, -1.0, 0.5, 0.0, -0.25, -0.75, 0.75, -1.0, -0.25, -0.75, 0.5, 0.0, 1.0, -0.75, 1.0, 1.0, 0.75, 0.0, 0.0, -0.75, -1.0, 0.25, 1.0, 1.0, -0.75, 0.0, -1.0, 0.0, 0.75, 0.75, 1.0, -0.5, -0.75, -0.75, 0.5, 0.0, -0.75, -0.5, -0.5, 0.0, -1.0, 0.0, 0.5, 0.75, ]);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    render_bundle_encoder400.popDebugGroup();
    const array7 = new Float32Array([0.5, 0.75, -0.25, -0.75, -1.0, -1.0, 0.25, 0.75, 0.0, 1.0, 1.0, 0.5, 0.5, -0.75, 1.0, -1.0, -0.75, -1.0, 1.0, 0.5, 0.0, -0.25, 1.0, 0.75, -0.75, -0.25, -1.0, 0.25, 0.75, -0.5, 0.75, 0.25, 0.25, -0.5, 0.25, -0.25, 0.5, 1.0, -1.0, -0.75, -1.0, 0.0, 0.75, -0.75, 0.25, 0.25, -0.5, -0.5, -1.0, -0.25, 0.0, 0.25, 0.5, -0.75, -0.5, -1.0, -0.75, 1.0, -1.0, -0.5, 0.25, -1.0, 0.5, -0.75, 0.0, -0.25, -0.5, -1.0, -1.0, -0.25, -0.75, 0.25, 0.75, -0.75, 0.75, -1.0, 1.0, 0.25, 0.25, -0.25, 0.5, 0.75, 0.75, -0.25, -0.75, -0.75, -0.5, 0.0, 1.0, 0.0, 0.25, 0.25, -1.0, 0.5, -0.5, 0.75, -0.25, 0.25, -0.5, 0.25, ]);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder4000.popDebugGroup()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    buffer000.destroy()
    
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder4000.popDebugGroup()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    query400.destroy()
    query400.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device50.pushErrorScope("out-of-memory");
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    device40.pushErrorScope("validation");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.popDebugGroup();
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
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    query500.destroy()
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    query500.destroy()
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    query500.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    device50.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device30.pushErrorScope("internal");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query600.destroy()
    device60.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    buffer400.destroy()
    
    
    command_encoder500.popDebugGroup()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const command_buffer500 = command_encoder500.finish();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
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
    query600.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query400.destroy()
    buffer500.destroy()
    const command_buffer402 = command_encoder402.finish();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query601.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    query500.destroy()
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder401.popDebugGroup();
    buffer401.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const command_buffer403 = command_encoder403.finish();
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer502 = command_encoder502.finish();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer600.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    query500.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    device50.pushErrorScope("out-of-memory");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_buffer404 = command_encoder404.finish();
    query600.destroy()
    
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
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
    query600.destroy()
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query600.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
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
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    render_bundle_encoder500.setPipeline(render_pipeline500);
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
    
    
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    buffer400.destroy()
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    device10.pushErrorScope("validation");
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group402);
    
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
    render_bundle_encoder500.insertDebugMarker("marker");
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
    device50.queue.submit([command_buffer500, command_buffer502, ]);
    device40.queue.writeBuffer(buffer407, 0, array3, 0, array3.length);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_buffer405 = command_encoder405.finish();
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query602.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder502.setPipeline(render_pipeline501);
    device70.destroy();
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer407, 0, array6, 0, array6.length);
    device60.pushErrorScope("out-of-memory");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query400.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    query502.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer201.destroy()
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    buffer602.destroy()
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device40.queue.submit([command_buffer401, command_buffer402, command_buffer403, command_buffer404, command_buffer405, ]);
    buffer401.destroy()
    buffer404.destroy()
    
    const compute_pass_encoder5011 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5011" });
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    buffer402.destroy()
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    render_bundle_encoder500.insertDebugMarker("marker");
    query602.destroy()
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    query400.destroy()
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.end();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder406.pushDebugGroup("mygroupmarker")
    
    
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4001.insertDebugMarker("marker")
    
    query601.destroy()
    render_bundle_encoder400.setVertexBuffer(0, buffer401);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    buffer501.destroy()
    command_encoder406.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    query401.destroy()
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.setVertexBuffer(0, buffer404);
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query602.destroy()
    device50.queue.writeTexture({ texture: texture504 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder4001.setPipeline(compute_pipeline4014);
    
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder400.setIndexBuffer(buffer406, "uint16");
    device50.pushErrorScope("internal");
    compute_pass_encoder5010.insertDebugMarker("marker")
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device40.queue.submit([command_buffer402, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer409.destroy()
    
    device40.queue.writeBuffer(buffer406, 0, array4, 0, array4.length);
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    compute_pass_encoder4001.insertDebugMarker("marker")
    
    render_bundle_encoder400.drawIndexed(3);
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_encoder407 = device40.createCommandEncoder({ label: "command_encoder407" });
    
    compute_pass_encoder5011.setPipeline(compute_pipeline501);
    
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.setPipeline(render_pipeline501);
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
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_bundle_encoder501.popDebugGroup();
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    
    
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer408, 0, array2, 0, array2.length);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
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
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5011.insertDebugMarker("marker")
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder600.insertDebugMarker("marker");
    device20.destroy();
    const array8 = new Float32Array([-0.75, 0.5, 1.0, 0.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, -0.5, 0.75, 0.0, -0.75, -1.0, 0.75, 0.5, -0.5, 0.25, -0.5, 0.75, 0.75, 0.25, 1.0, 0.75, -0.5, 0.75, -0.25, 0.0, 0.5, 0.75, -1.0, 1.0, -0.75, 0.5, 1.0, 0.5, 1.0, 0.25, -0.5, -0.5, 0.25, -1.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.75, 0.25, 0.0, 0.25, -0.25, -0.25, 0.5, -0.75, -0.25, 0.25, 0.0, 0.75, 0.5, -0.25, -0.25, 1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 0.75, 1.0, -0.5, -0.25, -0.25, 0.25, -1.0, -0.25, -1.0, -1.0, 0.5, 1.0, 0.5, -1.0, 0.5, 0.5, 0.25, -1.0, 0.75, -0.25, -1.0, 0.0, -0.25, 1.0, 0.0, ]);
    
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder406.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.popDebugGroup()
    const command_buffer407 = command_encoder407.finish();
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5011.setBindGroup(0, bind_group500);
    const command_buffer406 = command_encoder406.finish();
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
        layout: compute_pipeline4014.getBindGroupLayout(0),
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

    compute_pass_encoder4001.setBindGroup(0, bind_group404);
    const uint32_5011 = new Uint32Array(3);

    uint32_5011[0] = 100;
    uint32_5011[1] = 1;
    uint32_5011[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5011, 0, uint32_5011.length);

    compute_pass_encoder5011.dispatchWorkgroupsIndirect(buffer505, 0);
    compute_pass_encoder5011.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder600.popDebugGroup()
    const uint32_4001 = new Uint32Array(3);

    uint32_4001[0] = 100;
    uint32_4001[1] = 1;
    uint32_4001[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4001, 0, uint32_4001.length);

    compute_pass_encoder4001.dispatchWorkgroupsIndirect(buffer4014, 0);
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
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
    device40.queue.submit([command_buffer407, ]);
    compute_pass_encoder4001.end();
    compute_pass_encoder5010.dispatchWorkgroups(100);
    compute_pass_encoder5011.end();
    device60.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder5010.end();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4015, 0);
    device90.queue.submit([]);
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([command_buffer400, command_buffer402, command_buffer406, ]);
    compute_pass_encoder5010.end();
    device50.queue.submit([command_buffer502, ]);
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    compute_pass_encoder5011.setBindGroup(0, bind_group503);
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5013,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group504);
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer404, ]);
    device50.queue.submit([command_buffer501, ]);
    const uint32_5011 = new Uint32Array(3);

    uint32_5011[0] = 100;
    uint32_5011[1] = 1;
    uint32_5011[2] = 1;

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5014, 0, uint32_5011, 0, uint32_5011.length);

    compute_pass_encoder5011.dispatchWorkgroupsIndirect(buffer5014, 0);
    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5016,
                },
            },
        ],
    });

    compute_pass_encoder5011.setBindGroup(0, bind_group505);
}