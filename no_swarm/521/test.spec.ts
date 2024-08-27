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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.destroy();
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    buffer100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    query100.destroy()
    
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const array0 = new Float32Array([1.0, -0.75, 0.0, -0.75, 0.0, 1.0, -0.75, 0.0, 0.0, 0.25, 0.75, 0.25, 1.0, -0.5, -1.0, 0.25, -0.25, 0.0, -0.5, 0.0, -0.75, -0.75, 0.5, 0.0, 0.5, -0.25, -1.0, -0.75, 0.0, 1.0, 0.25, -0.5, 0.25, -0.25, -0.25, -0.75, -0.25, 0.5, 1.0, 0.5, -0.75, 0.25, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 0.5, -0.75, 0.75, -0.5, 0.0, 0.25, 0.75, 0.0, 0.5, -0.75, 0.25, -0.75, 0.25, -0.5, 0.25, -0.5, -0.5, -0.75, 0.25, 0.0, 0.25, 0.25, -1.0, -0.5, -0.75, 0.75, -0.5, 0.25, 0.75, -1.0, -0.5, 0.5, 0.75, 0.5, -1.0, 0.75, 1.0, 0.0, -0.75, -0.5, 0.75, -0.75, 0.75, -0.5, 0.25, -0.75, 0.5, -0.25, 0.5, -0.25, -0.5, -0.25, ]);
    device30.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array1 = new Float32Array([-1.0, -0.5, -1.0, 0.0, 0.0, -0.5, -0.25, 0.25, -1.0, -0.5, 0.25, -0.25, 0.5, -0.25, -0.5, 1.0, -0.5, -0.5, -0.75, 0.75, 0.75, -0.75, -0.75, -0.25, 0.5, 0.25, -0.75, -0.75, -0.75, -0.75, -1.0, 0.5, -1.0, -0.25, 0.75, 1.0, 0.75, 0.25, -1.0, -0.25, -0.25, -0.25, -1.0, 0.5, -0.5, 0.75, 0.0, -0.5, 0.75, -1.0, -0.25, 0.5, 0.25, 0.0, -0.5, 1.0, 0.0, -1.0, 0.5, 1.0, 0.25, 0.0, 0.0, 0.0, -0.25, -0.25, 0.75, -0.75, 0.0, -0.25, -0.75, -0.25, -0.75, -0.25, -0.5, 0.75, 0.5, -1.0, 0.75, -0.5, -1.0, -0.5, 0.25, 1.0, -0.25, 0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -0.25, -0.25, 0.5, 1.0, 1.0, 0.75, 0.5, 0.0, -1.0, ]);
    
    
    const array2 = new Float32Array([0.5, 0.75, 0.25, 0.25, 1.0, -0.75, -1.0, 1.0, -1.0, 0.0, -0.25, 0.25, 0.5, 0.5, 0.75, 0.75, 1.0, 0.25, 0.0, 0.0, 0.25, -1.0, 0.25, 0.25, 1.0, -1.0, -1.0, -1.0, -0.25, 0.5, 1.0, -1.0, 0.0, -0.25, -1.0, 1.0, -0.5, -0.75, -1.0, 0.5, -0.75, 1.0, 0.75, -0.5, 0.5, -1.0, -1.0, -0.75, 0.5, -0.75, -0.5, 0.25, 0.75, 1.0, -1.0, 0.25, 0.0, 0.25, 0.75, 0.5, -0.5, -0.25, 0.0, 0.75, 0.0, -0.75, -0.75, 0.25, -0.25, -0.75, 0.5, 0.5, 0.75, 0.5, 0.25, 1.0, -1.0, -0.75, -0.75, 0.25, -0.25, 0.5, -1.0, 1.0, 0.25, -1.0, -0.75, -0.25, 0.0, 1.0, -0.25, 0.5, 1.0, 0.5, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, ]);
    const array3 = new Float32Array([0.0, 1.0, -0.5, -0.5, -0.25, 0.0, -1.0, -0.5, 0.5, -0.5, -1.0, 0.5, 0.0, 1.0, -1.0, 0.75, -1.0, -0.5, -0.5, -0.5, 0.25, 0.5, -0.25, 1.0, 1.0, -0.5, 0.25, -1.0, -0.25, 0.75, 0.75, -1.0, -0.75, 0.0, -0.25, 0.75, -0.75, 1.0, 0.75, 1.0, -0.25, 1.0, 0.0, 1.0, -0.5, 0.25, 0.0, -0.5, 0.25, 1.0, 0.75, 0.0, 0.0, 0.5, -0.75, 0.0, 0.75, 1.0, 0.0, -0.5, 0.0, 0.25, 0.25, -1.0, 0.0, 0.25, 0.5, -0.75, 0.75, -0.25, -0.5, -0.75, 0.5, -1.0, -0.5, 0.5, 0.0, 1.0, -1.0, -0.75, 0.0, -0.5, 0.25, -1.0, -0.25, -0.75, -0.25, -1.0, -0.75, -1.0, -0.5, -0.25, -0.25, -0.75, -0.5, -0.5, 0.25, -0.25, 0.75, -0.25, ]);
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.25, -0.25, -0.25, 0.0, 0.75, -0.75, 0.75, 0.75, 0.5, 0.0, 1.0, -0.75, 1.0, -0.25, -1.0, -1.0, 0.25, -1.0, -0.75, 1.0, 1.0, -0.25, 0.0, 0.75, 0.5, 0.75, 0.75, 0.0, -0.25, 0.0, 0.25, -1.0, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, -0.5, 0.25, 1.0, 0.75, 0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -1.0, -0.5, 0.25, -0.25, -0.5, 1.0, 1.0, 0.0, 0.25, -1.0, -0.25, -1.0, 0.25, 0.25, -0.75, -1.0, 1.0, -0.75, 0.75, 0.0, 0.25, -0.75, 0.0, 1.0, 0.75, 0.25, -0.75, -0.25, -1.0, 0.75, -1.0, -0.25, 0.5, 0.5, 0.0, -0.25, 0.0, 0.25, 0.0, 0.0, 0.25, -0.25, 0.75, 0.5, 1.0, 0.25, -0.75, -0.75, 0.25, 0.0, -0.75, 0.25, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    device60.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.destroy();
    const array5 = new Float32Array([0.5, 0.75, -0.75, 0.25, -0.25, -0.75, 0.0, -0.5, 0.75, -1.0, 0.0, -0.75, -1.0, 0.0, 0.5, 0.75, -0.25, 0.75, -1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 1.0, 1.0, 0.5, 1.0, 0.25, 1.0, -0.5, 0.25, -0.75, 0.75, -0.5, -0.75, 0.25, -1.0, -0.75, 0.25, -0.75, -0.5, -1.0, 0.75, -0.25, -1.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -1.0, -0.5, -0.5, -1.0, 0.25, 0.0, 0.75, -0.75, -0.75, 1.0, -1.0, -0.5, 0.25, 0.0, 0.25, 1.0, 0.25, 1.0, -0.5, 1.0, -0.25, 0.0, 0.25, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, 0.0, -0.25, -0.75, -1.0, 0.0, 1.0, -0.5, ]);
    device80.pushErrorScope("out-of-memory");
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query800.destroy()
    
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
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
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    render_bundle_encoder802.insertDebugMarker("marker");
    
    
    query801.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder802.insertDebugMarker("marker");
    render_bundle_encoder802.pushDebugGroup("group_marker");
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    query801.destroy()
    
    buffer800.destroy()
    
    texture800.destroy();
    
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout800]
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout803,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    query801.destroy()
    
    
    
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
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    
    query800.destroy()
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    render_bundle_encoder802.setPipeline(render_pipeline802);
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    
    
    render_bundle_encoder801.setPipeline(render_pipeline803);
    render_bundle_encoder800.setPipeline(render_pipeline802);
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder801.pushDebugGroup("mygroupmarker")
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    const array6 = new Float32Array([0.5, 0.5, 0.25, -1.0, -1.0, 1.0, 1.0, -0.25, 0.75, -0.5, -1.0, -1.0, -0.5, 1.0, -0.5, 0.75, -0.25, -0.25, -0.75, -0.25, -0.25, 0.25, -0.75, -1.0, -0.75, -0.25, -0.25, 0.25, -1.0, -0.5, 0.0, 0.0, -0.25, 0.0, -1.0, -1.0, -0.25, 0.25, -0.5, -0.5, 0.5, 1.0, 0.75, -1.0, -1.0, 1.0, -0.25, -0.25, -0.75, 0.5, -0.25, -1.0, -1.0, -0.75, -1.0, 0.75, -0.75, -1.0, 0.25, 0.25, 0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.5, -0.75, -1.0, -0.5, 0.0, 0.25, -0.75, 0.25, -0.5, 0.0, 0.5, 0.0, -0.25, 0.75, 0.5, -0.25, 0.25, -0.25, -0.25, -1.0, 0.5, 0.5, -0.25, 0.75, 0.75, 0.25, -0.25, 0.75, 0.75, 0.5, -0.25, 0.5, 0.5, 1.0, ]);
    
    
    compute_pass_encoder8000.setPipeline(compute_pipeline801);
    
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([-1.0, -0.25, -0.5, -0.25, -0.75, -1.0, 0.25, 1.0, 0.5, 0.25, 0.0, -0.5, 0.25, -0.75, -0.5, 1.0, 0.75, -0.25, 0.5, -0.75, 1.0, 1.0, 1.0, 0.25, -1.0, -0.25, -0.75, 0.25, -0.75, 0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.25, 0.75, -0.25, -0.5, -0.75, 0.75, -1.0, 0.5, 0.5, 1.0, 0.75, -0.25, 1.0, -0.5, -1.0, -1.0, -0.5, -0.25, 0.5, -0.25, 1.0, -0.5, 0.0, 0.25, 0.25, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, -0.25, -0.5, 0.25, -1.0, 0.25, -0.25, -0.75, 1.0, -0.5, -0.25, -0.5, -0.5, -0.25, 0.0, 0.0, -0.75, 0.5, -0.75, -0.75, 0.75, -0.25, 0.25, 0.0, -0.75, -0.5, -0.75, -0.25, 0.25, 0.0, -0.75, -0.25, 0.25, 1.0, -0.75, ]);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer802,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout801,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module807.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout803,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    const render_pipeline805 = device80.createRenderPipeline({
        label: "render_pipeline805",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: compute_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer803,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer804,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group801);
    query802.destroy()
    
    command_encoder801.insertDebugMarker("mymarker");
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout801,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    buffer804.destroy()
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.popDebugGroup();
    const compute_pipeline805 = device80.createComputePipeline({
        label: "compute_pipeline805",
        layout: pipeline_layout802,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("validation");
    
    
    
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture802 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture802 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout801]
    });
    command_encoder801.popDebugGroup()
    
    query801.destroy()
    const compute_pipeline806 = device80.createComputePipeline({
        label: "compute_pipeline806",
        layout: pipeline_layout805,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder801.popDebugGroup();
    
    
    
    
    const compute_pipeline807 = device80.createComputePipeline({
        label: "compute_pipeline807",
        layout: pipeline_layout805,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    
    var shader_module808_code = "";
    try {
        shader_module808_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module808 = await device80.createShaderModule({ label: "shader_module808", code: shader_module808_code })
    const compute_pipeline808 = device80.createComputePipeline({
        label: "compute_pipeline808",
        layout: pipeline_layout801,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const pipeline_layout806 = device80.createPipelineLayout({ 
        label: "pipeline_layout806",
        bindGroupLayouts: [bind_group_layout804]
    });
    render_bundle_encoder802.popDebugGroup();
    query801.destroy()
    texture801.destroy();
    const compute_pipeline809 = device80.createComputePipeline({
        label: "compute_pipeline809",
        layout: pipeline_layout803,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query803.destroy()
    
    const compute_pipeline8010 = device80.createComputePipeline({
        label: "compute_pipeline8010",
        layout: pipeline_layout801,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    query801.destroy()
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline806 = device80.createRenderPipeline({
        label: "render_pipeline806",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    const render_pipeline807 = device80.createRenderPipeline({
        label: "render_pipeline807",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    device80.queue.writeTexture({ texture: texture802 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline8011 = device80.createComputePipeline({
        label: "compute_pipeline8011",
        layout: pipeline_layout803,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8010.setPipeline(compute_pipeline803);
    command_encoder802.insertDebugMarker("mymarker");
    device80.queue.writeTexture({ texture: texture802 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline808 = device80.createRenderPipeline({
        label: "render_pipeline808",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    const compute_pipeline8012 = device80.createComputePipeline({
        label: "compute_pipeline8012",
        layout: pipeline_layout804,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeTexture({ texture: texture802 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture802.destroy();
    const pipeline_layout807 = device80.createPipelineLayout({ 
        label: "pipeline_layout807",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout808 = device80.createPipelineLayout({ 
        label: "pipeline_layout808",
        bindGroupLayouts: [bind_group_layout804]
    });
    const pipeline_layout809 = device80.createPipelineLayout({ 
        label: "pipeline_layout809",
        bindGroupLayouts: [bind_group_layout804]
    });
    const pipeline_layout8010 = device80.createPipelineLayout({ 
        label: "pipeline_layout8010",
        bindGroupLayouts: [bind_group_layout803]
    });
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const render_pipeline809 = device80.createRenderPipeline({
        label: "render_pipeline809",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const compute_pipeline8013 = device80.createComputePipeline({
        label: "compute_pipeline8013",
        layout: pipeline_layout807,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    const render_pipeline8010 = device80.createRenderPipeline({
        label: "render_pipeline8010",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder8000.dispatchWorkgroups(100);
    
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const render_pipeline8011 = device80.createRenderPipeline({
        label: "render_pipeline8011",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    query802.destroy()
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
    
    const query805 = device80.createQuerySet({
        label: "query805",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer801.destroy()
    
    const render_pipeline8012 = device80.createRenderPipeline({
        label: "render_pipeline8012",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    const compute_pipeline8014 = device80.createComputePipeline({
        label: "compute_pipeline8014",
        layout: pipeline_layout809,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline8015 = device80.createComputePipeline({
        label: "compute_pipeline8015",
        layout: pipeline_layout806,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    query805.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    const compute_pipeline8016 = device80.createComputePipeline({
        label: "compute_pipeline8016",
        layout: pipeline_layout803,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pipeline8017 = device80.createComputePipeline({
        label: "compute_pipeline8017",
        layout: pipeline_layout805,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    buffer802.destroy()
    
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline8013 = device80.createRenderPipeline({
        label: "render_pipeline8013",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    const array8 = new Float32Array([0.75, 0.25, -0.25, 0.25, 0.0, 0.0, 0.0, 0.25, 0.25, -1.0, -0.75, 0.0, 1.0, 0.0, 0.5, 0.75, -0.75, 0.0, 0.25, 0.75, -1.0, -0.5, 0.75, 0.5, 1.0, -0.25, -0.75, -0.25, 0.75, -0.75, 1.0, 1.0, -0.5, 0.5, -0.75, -0.75, -0.75, 0.0, 0.75, 1.0, -0.25, -0.25, 0.0, 0.25, 0.75, -0.25, -0.5, -0.75, 0.5, -1.0, 0.25, -0.25, 1.0, -0.25, 1.0, 0.25, 0.0, 0.75, 0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 1.0, -0.75, -0.25, 0.25, -1.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.5, -0.25, 0.5, -0.25, 1.0, -0.75, 0.0, -0.5, 0.5, 0.25, -0.75, -1.0, 1.0, -1.0, 0.5, -0.25, -0.5, -0.25, -0.5, 0.5, 0.5, 0.25, -0.75, 0.75, -1.0, 0.75, ]);
    const render_pipeline8014 = device80.createRenderPipeline({
        label: "render_pipeline8014",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline8018 = device80.createComputePipeline({
        label: "compute_pipeline8018",
        layout: pipeline_layout804,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    
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
    
    
    query805.destroy()
    query802.destroy()
    compute_pass_encoder8000.insertDebugMarker("marker")
    const render_pipeline8015 = device80.createRenderPipeline({
        label: "render_pipeline8015",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    const render_pipeline8016 = device80.createRenderPipeline({
        label: "render_pipeline8016",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    query805.destroy()
    const command_encoder804 = device80.createCommandEncoder({ label: "command_encoder804" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const texture_view8040 = texture804.createView({ label: "texture_view8040" });
    const compute_pipeline8019 = device80.createComputePipeline({
        label: "compute_pipeline8019",
        layout: pipeline_layout806,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const pipeline_layout8011 = device80.createPipelineLayout({ 
        label: "pipeline_layout8011",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const compute_pass_encoder8040 = command_encoder804.beginComputePass({ label: "compute_pass_encoder8040" });
    const texture806 = device80.createTexture({
        label: "texture806",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const render_pipeline8017 = device80.createRenderPipeline({
        label: "render_pipeline8017",
        vertex: {
            module: shader_module806,
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
            module: shader_module806,
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
    
    const pipeline_layout8012 = device80.createPipelineLayout({ 
        label: "pipeline_layout8012",
        bindGroupLayouts: [bind_group_layout803]
    });
    const pipeline_layout8013 = device80.createPipelineLayout({ 
        label: "pipeline_layout8013",
        bindGroupLayouts: [bind_group_layout801]
    });
    const render_pass_encoder8030 = command_encoder803.beginRenderPass({
        label: "render_pass_encoder8030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8040,
            },
        ],
        occlusionQuerySet: undefined
    });
    const bind_group_layout805 = device80.createBindGroupLayout({ 
        label: "bind_group_layout805",
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
    compute_pass_encoder8000.insertDebugMarker("marker")
    compute_pass_encoder8040.setPipeline(compute_pipeline8012);
    const render_pipeline8018 = device80.createRenderPipeline({
        label: "render_pipeline8018",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    render_pass_encoder8030.setStencilReference(1);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const render_pipeline8019 = device80.createRenderPipeline({
        label: "render_pipeline8019",
        vertex: {
            module: shader_module808,
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
            module: shader_module808,
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    texture803.destroy();
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: render_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer805,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer806,
                },
            },
        ],
    });

    render_bundle_encoder802.setBindGroup(0, bind_group802);
    render_bundle_encoder801.insertDebugMarker("marker");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    compute_pass_encoder8040.pushDebugGroup("group_marker")
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    render_pass_encoder8030.setPipeline(render_pipeline800);
    
    const compute_pipeline8020 = device80.createComputePipeline({
        label: "compute_pipeline8020",
        layout: pipeline_layout802,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    texture900.destroy();
    const compute_pipeline8021 = device80.createComputePipeline({
        label: "compute_pipeline8021",
        layout: pipeline_layout806,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    texture700.destroy();
    const render_pipeline8020 = device80.createRenderPipeline({
        label: "render_pipeline8020",
        vertex: {
            module: shader_module808,
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
            module: shader_module808,
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
    const compute_pipeline8022 = device80.createComputePipeline({
        label: "compute_pipeline8022",
        layout: pipeline_layout807,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const pipeline_layout8014 = device80.createPipelineLayout({ 
        label: "pipeline_layout8014",
        bindGroupLayouts: [bind_group_layout805]
    });
    
    const render_pipeline8021 = device80.createRenderPipeline({
        label: "render_pipeline8021",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const compute_pipeline8023 = device80.createComputePipeline({
        label: "compute_pipeline8023",
        layout: pipeline_layout804,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group803 = device80.createBindGroup({
        label: "bind_group803",
        layout: compute_pipeline8012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer807,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer808,
                },
            },
        ],
    });

    compute_pass_encoder8040.setBindGroup(0, bind_group803);
    const render_pipeline8022 = device80.createRenderPipeline({
        label: "render_pipeline8022",
        vertex: {
            module: shader_module808,
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
            module: shader_module808,
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
    const texture_view8050 = texture805.createView({ label: "texture_view8050" });
    
    const render_pipeline8023 = device80.createRenderPipeline({
        label: "render_pipeline8023",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    const compute_pipeline8024 = device80.createComputePipeline({
        label: "compute_pipeline8024",
        layout: pipeline_layout808,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_pass_encoder8020 = command_encoder802.beginRenderPass({
        label: "render_pass_encoder8020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8040,
            },
        ],
        occlusionQuerySet: query800
    });
    const pipeline_layout8015 = device80.createPipelineLayout({ 
        label: "pipeline_layout8015",
        bindGroupLayouts: [bind_group_layout803]
    });
    
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_pass_encoder8020.setPipeline(render_pipeline805);
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    buffer807.destroy()
    render_bundle_encoder802.pushDebugGroup("group_marker");
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    render_pass_encoder8020.setScissorRect(0, 0, texture804.width / 2, texture804.height / 2);
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8025 = device80.createComputePipeline({
        label: "compute_pipeline8025",
        layout: pipeline_layout8013,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    
    query800.destroy()
    const pipeline_layout8016 = device80.createPipelineLayout({ 
        label: "pipeline_layout8016",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pipeline8026 = device80.createComputePipeline({
        label: "compute_pipeline8026",
        layout: pipeline_layout8013,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    const compute_pipeline8027 = device80.createComputePipeline({
        label: "compute_pipeline8027",
        layout: pipeline_layout801,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    const buffer809 = device80.createBuffer({
        label: "buffer809",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline8028 = device80.createComputePipeline({
        label: "compute_pipeline8028",
        layout: pipeline_layout807,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const compute_pipeline8029 = device80.createComputePipeline({
        label: "compute_pipeline8029",
        layout: pipeline_layout8013,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline8030 = device80.createComputePipeline({
        label: "compute_pipeline8030",
        layout: pipeline_layout801,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    compute_pass_encoder8040.popDebugGroup()
    const compute_pipeline8031 = device80.createComputePipeline({
        label: "compute_pipeline8031",
        layout: pipeline_layout8011,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const compute_pipeline8032 = device80.createComputePipeline({
        label: "compute_pipeline8032",
        layout: pipeline_layout8016,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline8033 = device80.createComputePipeline({
        label: "compute_pipeline8033",
        layout: pipeline_layout806,
        compute: {
            module: shader_module805,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const pipeline_layout8017 = device80.createPipelineLayout({ 
        label: "pipeline_layout8017",
        bindGroupLayouts: [bind_group_layout805]
    });
    const compute_pipeline8034 = device80.createComputePipeline({
        label: "compute_pipeline8034",
        layout: pipeline_layout8012,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    render_pass_encoder8030.setViewport(0, 0, texture804.width / 2, texture804.height / 2, 0, 1);
    buffer809.destroy()
    buffer803.destroy()
    render_pass_encoder8020.pushDebugGroup("group_marker");
    
    
    const compute_pipeline8035 = device80.createComputePipeline({
        label: "compute_pipeline8035",
        layout: pipeline_layout806,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    compute_pass_encoder8000.popDebugGroup()
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline8036 = device80.createComputePipeline({
        label: "compute_pipeline8036",
        layout: pipeline_layout806,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    query800.destroy()
    render_bundle_encoder802.insertDebugMarker("marker");
    
    
    
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
    var shader_module809_code = "";
    try {
        shader_module809_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module809 = await device80.createShaderModule({ label: "shader_module809", code: shader_module809_code })
    const compute_pipeline8037 = device80.createComputePipeline({
        label: "compute_pipeline8037",
        layout: pipeline_layout8015,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const buffer8010 = device80.createBuffer({
        label: "buffer8010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline8038 = device80.createComputePipeline({
        label: "compute_pipeline8038",
        layout: pipeline_layout8015,
        compute: {
            module: shader_module807,
            entryPoint: "main"
        }
    });
    const pipeline_layout8018 = device80.createPipelineLayout({ 
        label: "pipeline_layout8018",
        bindGroupLayouts: [bind_group_layout803]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_buffer901 = command_encoder901.finish();
    const buffer8011 = device80.createBuffer({
        label: "buffer8011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8012 = device80.createBuffer({
        label: "buffer8012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group804 = device80.createBindGroup({
        label: "bind_group804",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8012,
                },
            },
        ],
    });

    render_pass_encoder8030.setBindGroup(0, bind_group804);
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder8000.end();
    const buffer8013 = device80.createBuffer({
        label: "buffer8013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8014 = device80.createBuffer({
        label: "buffer8014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group805 = device80.createBindGroup({
        label: "bind_group805",
        layout: compute_pipeline803.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8014,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group805);
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8015 = device80.createBuffer({
        label: "buffer8015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8015, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8015, 0);
    compute_pass_encoder8010.end();
    compute_pass_encoder8040.dispatchWorkgroups(100);
    const buffer8016 = device80.createBuffer({
        label: "buffer8016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8017 = device80.createBuffer({
        label: "buffer8017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group806 = device80.createBindGroup({
        label: "bind_group806",
        layout: render_pipeline805.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8017,
                },
            },
        ],
    });

    render_pass_encoder8020.setBindGroup(0, bind_group806);
    const command_buffer900 = command_encoder900.finish();
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder8040.end();
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder8020.popDebugGroup();
    device80.queue.submit([command_buffer801, ]);
    const command_buffer800 = command_encoder800.finish();
    const command_buffer804 = command_encoder804.finish();
    device80.queue.submit([command_buffer800, command_buffer804, ]);
}