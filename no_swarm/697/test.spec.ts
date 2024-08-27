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
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const array0 = new Float32Array([-0.25, -0.25, -1.0, -0.25, -1.0, 1.0, 0.25, 0.0, -0.25, -0.5, -0.25, 0.75, 1.0, -0.5, 0.75, -0.75, 1.0, -0.5, 0.25, 1.0, -0.75, -0.5, -0.75, 1.0, 0.75, 0.5, -1.0, -0.5, -1.0, 0.5, 0.5, 0.25, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 1.0, 0.0, 0.5, -0.75, 0.0, -0.5, -0.75, 1.0, 1.0, 1.0, -1.0, -0.5, 1.0, -1.0, 1.0, -0.5, 1.0, 0.5, 0.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.25, 0.75, -1.0, 1.0, 0.75, 0.25, 0.0, 1.0, -0.25, 0.25, 0.0, 0.25, -0.25, -1.0, 0.0, 0.5, -0.5, 0.25, -0.5, 1.0, -0.75, 0.0, -0.75, -0.5, 0.75, 0.75, 1.0, -0.25, 0.25, -1.0, 1.0, 1.0, 0.75, -0.5, 0.75, -0.75, -1.0, -0.25, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const array1 = new Float32Array([-1.0, 0.0, -0.75, 0.0, 0.5, -0.5, -0.75, 0.25, 0.75, -0.75, 1.0, -1.0, 0.75, 0.25, 0.0, -0.5, -0.75, 0.5, -0.5, -0.75, -0.5, -0.75, -0.75, 0.75, 0.75, 0.75, 0.5, -1.0, 0.25, 0.75, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.5, 0.75, 0.75, 0.0, -0.25, 0.25, 0.75, 0.75, -0.75, 0.25, -0.5, 0.75, 0.25, 0.75, 0.25, -0.5, 0.5, -0.25, 0.75, -0.5, 0.0, 0.75, 0.5, -0.75, -0.75, 0.0, -0.75, 0.0, -0.75, 0.0, -0.5, -0.5, 0.25, -0.5, 1.0, 0.0, -0.5, 1.0, -1.0, 0.75, 0.5, 0.25, -0.75, 0.25, -1.0, 0.75, 0.25, -1.0, -0.25, 0.0, 0.75, 0.0, 1.0, -1.0, -1.0, 0.25, 0.75, -0.25, -0.5, -0.75, -0.75, ]);
    const array2 = new Float32Array([-0.5, 0.25, 1.0, 0.5, -1.0, -0.25, 0.25, 0.0, 0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 0.5, -1.0, 1.0, 0.75, -0.75, 0.25, -0.25, 0.0, -0.75, 1.0, -0.5, -0.5, 0.5, 0.5, -0.75, 0.75, 0.25, -1.0, 0.0, 0.75, -1.0, 0.25, -0.5, -0.75, 0.25, -1.0, -1.0, -0.25, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, -1.0, -0.25, -0.25, -0.25, -0.75, 1.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.25, -0.25, 0.5, -0.75, 0.5, 1.0, 1.0, 1.0, 0.0, -1.0, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 1.0, 0.0, -1.0, -0.25, 1.0, -1.0, -1.0, 0.5, 1.0, -0.75, 0.5, 0.5, 0.25, 0.5, 1.0, 0.75, -0.75, -1.0, 0.25, 0.0, 1.0, 0.25, 0.0, 0.5, -0.5, ]);
    
    const array3 = new Float32Array([-1.0, -0.25, 0.0, 0.5, 0.25, 0.5, 0.0, -0.25, -0.5, -1.0, 0.75, -0.25, 0.5, -0.5, -1.0, -1.0, -0.25, 0.5, 1.0, -0.75, -0.5, 0.5, -1.0, -0.75, -0.5, 0.5, -0.25, 0.0, 0.5, 0.75, 0.75, -0.75, -1.0, 0.25, 0.25, 0.75, -0.5, -0.25, -0.25, 0.5, 1.0, 0.25, 0.0, -0.25, -1.0, -0.5, 0.75, -0.25, -0.25, -0.25, -0.25, -0.25, 0.75, 0.75, -0.5, -1.0, 0.75, 1.0, -0.75, 0.25, 0.75, -0.75, -0.75, 0.0, 0.75, 1.0, 0.25, 0.75, 0.75, 0.0, 0.75, -1.0, -0.75, -1.0, -1.0, -0.75, -0.25, 0.25, -0.5, -1.0, 0.25, -1.0, -0.75, 0.25, 1.0, 0.75, 0.25, -1.0, 0.25, -0.5, 1.0, -1.0, -0.25, -0.25, -0.5, 0.5, -1.0, -0.5, -0.75, -0.5, ]);
    const array4 = new Float32Array([1.0, -0.75, -0.75, -0.75, 1.0, 1.0, -0.5, 0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.25, -0.25, -0.25, -0.5, -1.0, 0.75, -0.75, -0.25, 0.25, 1.0, 0.5, 0.75, -0.5, 0.25, -0.25, -0.5, -1.0, -0.5, -1.0, 1.0, -0.5, -0.75, 0.0, -0.75, 0.0, -0.25, 0.5, 1.0, -0.5, -0.5, -0.5, -0.75, 0.5, 0.75, 1.0, 0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -0.5, -0.75, 1.0, -1.0, 0.5, 1.0, -1.0, 1.0, 1.0, -1.0, -0.5, -0.25, -1.0, -1.0, 0.75, -0.5, -0.5, -1.0, 0.5, -0.25, -1.0, 0.5, 0.5, -1.0, -0.5, -0.25, 0.5, -0.75, 0.25, 0.5, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, -0.25, 0.25, 1.0, 0.25, 0.0, 0.5, 0.0, -0.5, 0.5, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.75, -1.0, -1.0, 0.0, 0.25, -0.25, -0.75, 1.0, -1.0, 0.0, 0.5, -1.0, -0.25, 0.0, 0.75, 0.0, 0.5, -0.25, 0.75, -0.75, 0.0, 0.0, 1.0, -0.75, 0.5, 0.25, -0.75, -1.0, -0.75, 0.0, 1.0, 0.75, 1.0, 0.75, -1.0, -1.0, 0.75, -0.5, 0.25, -1.0, -0.25, -0.25, -1.0, 0.25, 0.5, -0.25, -0.75, -0.25, 0.5, -1.0, 0.75, -0.5, -0.25, 0.0, 1.0, 0.75, 0.25, -0.5, 1.0, 0.0, -1.0, -0.75, 0.0, 0.75, -0.75, 1.0, 0.0, 0.75, 0.75, 0.25, 0.5, -0.5, -0.25, -0.25, 0.25, 1.0, 0.75, -1.0, 1.0, 0.0, 0.0, 0.0, 0.5, -0.5, 0.25, 0.0, -0.25, -0.25, 0.75, 0.25, 0.0, 0.0, -0.75, 0.75, 0.25, 0.75, -0.75, 0.0, 0.75, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device20.pushErrorScope("internal");
    const array6 = new Float32Array([-0.75, 0.75, 0.25, 0.25, -0.75, -0.5, 1.0, 0.25, -0.25, -0.5, 0.75, 0.5, -0.75, -1.0, 0.0, -0.5, 1.0, 0.0, 1.0, -1.0, 0.5, 0.0, -1.0, -0.75, -0.25, 1.0, -0.75, -0.5, -0.75, 0.75, -0.25, 0.25, -0.25, 1.0, -0.75, 0.0, -1.0, 1.0, -1.0, 0.5, 0.75, -0.5, 0.5, 0.25, 1.0, -0.25, 0.5, -1.0, 1.0, 1.0, -0.5, 0.5, 0.75, -0.5, 1.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.5, 1.0, -0.75, -0.75, -0.75, -0.25, 0.25, -1.0, -0.5, 0.75, 0.0, 0.25, 0.5, -0.25, -0.25, 0.25, 0.75, -0.5, 1.0, -0.5, -0.75, 0.25, -0.5, 1.0, -1.0, 0.5, -0.75, 0.5, 0.75, -0.75, 1.0, 0.25, -1.0, 0.25, 1.0, -0.25, -0.5, -1.0, -0.25, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    query200.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array7 = new Float32Array([-1.0, 0.25, 1.0, 0.5, 0.75, 0.0, -0.25, 0.75, 0.25, 0.5, -0.5, 0.0, -0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 1.0, -0.75, -1.0, -0.25, 0.5, 0.0, 1.0, 0.0, 0.5, 0.25, 0.75, 0.25, -0.25, -1.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.75, -1.0, -0.5, -0.75, 1.0, -0.75, 0.0, 1.0, 0.0, -0.25, -0.75, -0.75, 0.5, 0.0, 1.0, -0.5, 1.0, 0.0, -0.25, -0.5, 0.0, -0.25, 0.0, 1.0, 0.75, 0.0, -1.0, 1.0, -0.25, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, -0.75, 0.25, -0.25, 0.0, -1.0, 0.75, 0.5, -0.25, 0.5, 1.0, -0.75, 0.75, 1.0, 0.0, -1.0, -1.0, 0.0, 0.0, -0.5, 0.25, 0.75, 0.25, 0.5, -0.5, 0.25, -0.5, -0.25, 0.75, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device40.destroy();
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.destroy();
    
    
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    device60.pushErrorScope("validation");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device60.pushErrorScope("internal");
    const array8 = new Float32Array([0.5, 1.0, 0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.25, 0.5, -1.0, -0.5, -0.75, 0.0, 0.5, -0.25, 0.0, 1.0, -0.25, -0.75, 0.25, -1.0, -1.0, 0.75, 0.0, -0.5, 0.25, 0.25, 0.25, 0.0, 1.0, 0.0, -0.25, -0.5, 1.0, -1.0, -0.75, -0.5, 1.0, -0.25, -0.5, 0.75, 0.5, 1.0, -0.25, 0.0, 0.0, 0.25, 1.0, -0.5, 0.0, -0.25, -0.75, -1.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.5, -0.75, -1.0, 0.5, -0.5, 1.0, 0.25, -0.5, -1.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.0, 1.0, 0.75, -0.25, -1.0, -0.75, 0.0, 0.25, 0.75, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, -0.75, -0.75, -0.5, 0.5, 1.0, 1.0, 0.0, 0.5, 0.0, -1.0, -0.25, -0.25, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    query601.destroy()
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_bundle_encoder800.insertDebugMarker("marker");
    
    query601.destroy()
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture800.destroy();
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
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
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
    query600.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    texture801.destroy();
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    buffer601.destroy()
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    buffer600.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    render_bundle_encoder800.popDebugGroup();
    
    
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    
    
    
    
    
    
    query300.destroy()
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    texture700.destroy();
    query602.destroy()
    buffer800.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.destroy();
    buffer801.destroy()
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    query601.destroy()
    query600.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    texture802.destroy();
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    device80.destroy();
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module6010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    query601.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module6010,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    query602.destroy()
    
    render_bundle_encoder601.setPipeline(render_pipeline601);
    
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
    
    
    
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    buffer702.destroy()
    render_bundle_encoder500.popDebugGroup();
    
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const array9 = new Float32Array([1.0, -0.75, 1.0, 0.0, 0.5, 1.0, -1.0, 1.0, 0.5, -0.25, 0.0, -0.75, 0.5, -0.5, -0.75, 0.75, -0.5, 0.25, 0.25, 0.5, 0.5, 0.25, 0.75, 0.25, -0.5, 0.75, -0.75, 0.75, -1.0, -1.0, -0.25, 0.0, 0.5, -0.75, 0.75, -0.75, 0.0, -0.5, -1.0, -1.0, -0.75, 0.5, 0.75, 0.75, 0.25, 0.0, 1.0, 0.0, 0.5, -0.5, -0.5, 0.25, 0.25, -1.0, 0.0, -0.75, 0.75, -0.5, -0.75, 0.25, 0.25, 0.25, -0.5, -1.0, -0.25, 0.25, -0.25, 1.0, 1.0, -0.25, 1.0, 0.75, -0.25, 0.5, -0.25, 0.0, 0.75, -1.0, 0.5, -0.25, 0.75, -0.75, 0.75, 1.0, -0.5, 0.75, -0.5, -0.5, 0.5, 0.25, -0.5, 0.0, 0.0, 0.25, -0.5, 0.0, 0.25, 1.0, 0.5, -0.75, ]);
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_bundle_encoder600.setPipeline(render_pipeline602);
    
    
    
    
    
    query602.destroy()
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder502.popDebugGroup();
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    query603.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query600.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    query601.destroy()
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer900.destroy()
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    
    
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    var shader_module6011_code = "";
    try {
        shader_module6011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module6011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6011 = await device60.createShaderModule({ label: "shader_module6011", code: shader_module6011_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    texture500.destroy();
    
    buffer605.destroy()
    
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    buffer604.destroy()
    compute_pass_encoder5000.insertDebugMarker("marker")
    texture601.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder502.popDebugGroup();
    
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout600,
        compute: {
            module: shader_module6010,
            entryPoint: "main"
        }
    });
    query602.destroy()
    
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    texture600.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    query604.destroy()
    query600.destroy()
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout600,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
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
    compute_pass_encoder5010.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout601,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout600,
        compute: {
            module: shader_module6011,
            entryPoint: "main"
        }
    });
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
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
    
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout601,
        compute: {
            module: shader_module6011,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device90.destroy();
    render_bundle_encoder602.setPipeline(render_pipeline607);
    
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
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
    query602.destroy()
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query605
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_pass_encoder6000.setStencilReference(1);
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_pass_encoder6000.setStencilReference(1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder5000.popDebugGroup()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout600,
        compute: {
            module: shader_module6011,
            entryPoint: "main"
        }
    });
    buffer603.destroy()
    render_pass_encoder6000.pushDebugGroup("group_marker");
    
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout601,
        compute: {
            module: shader_module6011,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setPipeline(render_pipeline605);
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout601,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.popDebugGroup();
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout600,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: query601
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    texture501.destroy();
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_pass_encoder6000.insertDebugMarker("marker");
    
    
    render_pass_encoder6010.setStencilReference(1);
    render_pass_encoder6010.setPipeline(render_pipeline601);
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder5010.setPipeline(compute_pipeline501);
    texture502.destroy();
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    const array10 = new Float32Array([-0.5, -1.0, -0.75, -0.75, -0.25, 1.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, 1.0, 0.5, 0.75, 0.75, 0.75, 0.5, -0.25, 0.25, 0.25, 0.0, -0.75, 0.0, 0.0, 0.5, 0.5, -1.0, 0.0, -0.25, 0.25, 0.0, 0.5, -0.25, 0.25, 0.75, 0.25, -0.75, 0.25, -1.0, 0.75, 0.0, -0.25, -0.5, 0.75, -0.25, -0.75, -1.0, -0.75, 1.0, 1.0, -0.25, -1.0, -1.0, -0.5, -0.25, -0.5, 0.25, -1.0, -0.5, 0.75, 0.25, -1.0, -1.0, 1.0, -0.5, 0.5, 0.5, 1.0, 0.25, -0.5, 0.75, 0.75, -0.75, 0.0, -0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 0.5, -0.75, -0.75, 0.75, 0.25, 0.0, -1.0, 0.25, 0.5, 0.75, 0.25, ]);
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    
    device50.pushErrorScope("internal");
    compute_pass_encoder5010.insertDebugMarker("marker")
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout602,
        compute: {
            module: shader_module608,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6012,
            },
        ],
        occlusionQuerySet: query602
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module6012_code = "";
    try {
        shader_module6012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module6012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6012 = await device60.createShaderModule({ label: "shader_module6012", code: shader_module6012_code })
    render_pass_encoder6020.pushDebugGroup("group_marker");
    texture604.destroy();
    
    render_pass_encoder6020.setPipeline(render_pipeline604);
    render_pass_encoder6000.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.setPipeline(compute_pipeline502);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline605.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group602);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group500);
    compute_pass_encoder5020.popDebugGroup()
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer502, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer502, 0);
    compute_pass_encoder5010.popDebugGroup()
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group603);
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6011,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group604);
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
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder5000.end();
    render_pass_encoder6020.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder5020.end();
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
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
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    device50.queue.submit([command_buffer500, ]);
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder5010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder5010.end();
    command_encoder501.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
}