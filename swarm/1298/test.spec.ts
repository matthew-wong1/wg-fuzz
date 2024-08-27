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
    const array0 = new Float32Array([0.5, 0.25, -0.25, -0.25, 0.75, 0.5, 1.0, -0.25, 0.0, 0.0, -0.75, 1.0, 0.5, 0.75, 0.5, 0.0, -1.0, 0.0, 0.5, 0.0, -1.0, 0.5, -0.5, 0.75, -0.75, 1.0, -0.75, 1.0, -0.5, 0.0, -0.25, -0.25, -0.25, 0.75, 1.0, 0.75, -0.25, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.5, -0.75, -1.0, -0.25, 0.5, 0.25, -0.25, 0.25, 1.0, -0.5, -0.75, -0.25, 0.0, 0.75, 0.25, 0.75, 1.0, -0.5, -1.0, 1.0, 0.25, -1.0, -0.5, 0.75, 0.0, -1.0, -0.75, 0.75, -0.5, -0.25, -0.25, 1.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.25, -1.0, 0.25, -0.5, -1.0, 0.0, 0.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.75, 0.5, 1.0, 0.25, 0.25, -0.75, 0.75, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([]);
    device10.destroy();
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([0.25, 1.0, 0.5, -0.5, -0.25, 0.25, 1.0, 1.0, 0.25, -0.25, 0.25, -0.5, -1.0, 0.5, -0.75, -0.75, 0.25, -0.25, -0.5, -0.5, 0.0, -0.25, 0.75, -0.75, 0.5, -0.75, -0.25, -0.75, -0.75, -0.75, 0.75, -0.5, 0.0, -0.5, -0.25, -0.75, 0.75, -1.0, -0.25, -1.0, -0.75, -1.0, -0.75, 0.75, 0.5, 0.75, 1.0, 0.5, -0.5, 1.0, 0.5, 0.25, 0.5, -1.0, -0.75, -0.5, -0.5, 0.0, -0.75, 0.75, 0.5, -1.0, 0.5, 0.0, -0.75, -0.5, 0.0, -0.5, 0.0, 0.5, -0.75, 0.75, 0.25, 0.0, 1.0, 0.0, 0.25, -1.0, 0.5, 0.0, 0.25, 0.5, 0.0, 0.5, 0.75, 0.25, 0.75, 0.25, 0.5, 0.75, -0.25, 0.5, 0.25, -0.5, -0.75, 0.5, 0.25, 1.0, 0.0, 0.0, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer000.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query000.destroy()
    
    buffer002.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder000.popDebugGroup();
    
    device00.destroy();
    const array2 = new Float32Array([-0.5, 0.25, -0.75, 0.25, -1.0, 0.25, -0.5, -0.5, -0.25, -1.0, 0.75, 0.25, 0.25, 1.0, 0.25, 0.75, 0.75, 1.0, 0.25, 0.5, -1.0, -0.75, 0.75, 0.5, -1.0, 0.25, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.5, -0.5, -1.0, 0.25, 0.75, -0.5, 1.0, -1.0, -0.75, -1.0, -0.25, 0.25, 0.25, 0.25, -0.75, 0.25, 0.75, 0.5, 0.25, 0.75, -0.5, -0.25, 0.75, 0.5, 0.75, -0.75, -0.25, 0.25, -0.25, -0.75, -0.75, -0.25, -1.0, 0.0, 0.25, 0.0, -0.75, -1.0, 0.25, -1.0, -0.25, 0.0, 0.0, 0.75, -1.0, -0.5, -0.25, -0.75, -0.75, -0.75, -0.5, -0.5, 0.0, 0.5, 1.0, 1.0, 0.25, -1.0, -0.25, 0.75, 0.75, 0.75, 1.0, 0.25, 0.75, -0.25, 0.75, -0.75, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    device20.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
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
    query500.destroy()
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([1.0, -0.5, -1.0, 0.0, 0.5, -0.25, 0.75, 0.5, 0.5, 1.0, 0.25, 0.0, 0.5, -0.5, 0.75, -0.5, -0.25, 0.25, -1.0, -0.5, -0.5, 0.75, 0.75, 0.75, 0.25, 0.75, -0.25, -1.0, 0.5, 0.75, -0.5, 0.75, -1.0, 0.0, -0.25, 1.0, 0.25, -0.5, 1.0, 1.0, 0.5, -0.75, -0.75, 0.75, 0.25, -0.25, -0.75, -0.25, 0.25, 0.75, 0.0, -0.25, 0.75, 0.5, 1.0, 0.5, 1.0, -0.5, -0.75, 0.0, 0.25, 1.0, 0.5, -0.25, 0.75, -1.0, 1.0, -0.25, 0.75, 0.0, 0.75, -1.0, 0.5, 0.0, -0.75, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.25, -0.5, 1.0, 0.5, -0.5, 1.0, 0.5, -0.25, -0.5, 0.75, 0.75, -0.25, -0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -0.25, ]);
    buffer500.destroy()
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query800.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device80.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query300.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    device90.queue.submit([]);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    
    
    const array4 = new Float32Array([0.25, 1.0, -0.75, -1.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.5, 0.5, 0.0, -0.5, -0.25, -0.75, 0.5, 1.0, -0.25, -0.75, -0.5, -0.25, 0.75, 1.0, -0.5, 1.0, 0.25, -0.75, -1.0, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, -0.75, -0.25, 1.0, -0.5, 0.5, 1.0, -0.25, -0.75, 0.25, -0.25, 0.25, -1.0, -0.25, -0.75, -0.25, 0.5, -0.75, 0.75, -1.0, -0.25, 0.5, -0.75, -0.25, -0.75, 0.75, 0.0, -0.5, 0.25, 0.0, 0.0, 0.25, 0.0, -0.25, -0.75, -0.75, 0.0, 0.25, 1.0, -1.0, -0.25, 0.25, 0.75, 0.25, 0.25, 1.0, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.0, 0.0, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.25, -1.0, 0.25, ]);
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    device70.destroy();
    query900.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device10.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    query901.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device90.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    device60.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    
    
    
    const render_pipeline1002 = device100.createRenderPipeline({
        label: "render_pipeline1002",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const array5 = new Float32Array([-0.25, -0.25, -0.5, -1.0, 0.5, -1.0, 0.75, 1.0, -0.25, -0.25, -1.0, -0.5, 0.0, -1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.25, 1.0, -0.25, -0.25, 0.5, 0.0, -0.25, 1.0, 0.75, 1.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.0, -1.0, -0.75, -1.0, 1.0, 0.0, -1.0, -1.0, -0.25, 0.0, 1.0, -1.0, -0.75, 1.0, -1.0, 0.75, 1.0, -0.75, 0.25, 0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.25, -0.75, 0.75, 1.0, 1.0, 0.0, -0.5, -0.25, -0.75, -0.25, 0.0, -0.5, -0.75, -0.5, -0.75, 0.25, 0.0, -0.5, 0.0, 0.25, -0.75, 0.75, 1.0, 1.0, -0.5, 0.75, 0.5, 1.0, 0.75, 1.0, 1.0, 0.5, -0.5, -1.0, 0.5, 0.0, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query1002.destroy()
    device80.destroy();
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    
    
    const render_pipeline1003 = device100.createRenderPipeline({
        label: "render_pipeline1003",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    device100.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    buffer400.destroy()
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
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
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    query1200.destroy()
    
    
    device80.destroy();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query1000.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array6 = new Float32Array([-0.25, 1.0, 0.5, 0.0, 0.75, -0.75, 0.5, -1.0, -0.75, 0.75, -0.5, 0.75, 0.75, -0.25, -0.5, 0.75, 0.5, 0.0, -1.0, -1.0, -0.25, 0.5, 0.0, -0.25, -1.0, 0.25, -0.5, 1.0, -0.5, 1.0, -0.75, -0.25, -0.75, 0.25, -0.75, -0.25, -0.25, 0.5, -0.25, 0.5, 1.0, -0.25, 0.25, -0.25, -0.5, -0.75, -1.0, 0.25, 1.0, -1.0, 0.75, -0.25, 0.0, 0.75, 0.25, -0.25, -0.25, -0.75, -1.0, 0.5, -0.25, -0.5, -0.75, 1.0, -0.75, 1.0, 1.0, -1.0, 0.25, -1.0, 0.75, 0.0, -0.5, -0.25, 0.0, 0.5, -0.5, 0.5, -1.0, 0.0, -1.0, 0.0, -0.5, 0.5, 0.25, 0.25, 0.25, 1.0, 0.0, -0.75, -1.0, -1.0, 0.75, 1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.25, ]);
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    query300.destroy()
    device110.destroy();
    const array7 = new Float32Array([-0.25, 0.0, 0.5, 1.0, 1.0, 0.5, 0.0, 0.0, 0.5, 0.5, -1.0, 1.0, 0.0, -0.5, -0.25, 1.0, 0.75, -0.5, 0.5, -1.0, 1.0, 0.75, 0.0, 0.25, 0.75, 0.0, 1.0, -0.75, -0.75, -1.0, -0.5, 0.75, -0.25, 0.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.25, 0.25, -0.75, 0.0, -0.5, -0.5, 0.5, 0.5, -0.75, 0.5, -0.5, 0.5, -0.5, -0.5, -0.5, 0.75, 0.0, -0.5, 0.5, 0.0, 0.5, -0.25, -0.25, 0.0, -0.75, 0.25, 0.75, -0.75, -0.5, -1.0, -0.25, -0.75, 0.5, 0.75, 1.0, -0.25, 1.0, -0.75, 0.5, 0.75, 0.25, 0.0, -1.0, -0.75, 0.75, 1.0, 0.0, 1.0, 0.5, 0.75, 1.0, -0.5, 0.5, 0.5, -1.0, -1.0, -0.75, -0.25, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1202.insertDebugMarker("marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    query1201.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    query900.destroy()
    query002.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
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
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const array8 = new Float32Array([0.0, -0.5, -0.75, -0.75, 1.0, -1.0, -0.5, 0.25, -0.25, 0.25, -1.0, 0.75, 0.75, -0.5, -0.75, -1.0, 0.25, 0.5, 0.5, 0.75, -0.5, -1.0, -0.25, 0.75, 0.0, 1.0, 1.0, 0.25, 0.25, -0.25, -0.5, 0.75, -0.75, -1.0, 0.75, -0.25, 0.5, 0.75, 0.0, -0.5, -1.0, 0.25, 0.0, -1.0, 1.0, 0.75, -0.75, -0.25, 0.0, -1.0, 0.25, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, 0.5, 1.0, 0.5, 0.25, 0.25, 1.0, -1.0, 0.75, 0.25, 0.0, -0.75, 1.0, 0.5, 0.25, -0.25, 0.0, -0.25, 0.75, -0.75, 0.0, 0.5, -1.0, -0.25, 0.0, 0.75, -0.25, 0.75, -1.0, 0.75, 0.75, 0.5, 1.0, 0.75, 0.5, 1.0, 0.75, -1.0, -1.0, -1.0, -0.75, -0.75, 0.0, 0.75, ]);
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder402.popDebugGroup();
    
    buffer401.destroy()
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    render_bundle_encoder402.popDebugGroup();
    device40.destroy();
    const render_pipeline1004 = device100.createRenderPipeline({
        label: "render_pipeline1004",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    buffer700.destroy()
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    device40.destroy();
    
    device20.queue.submit([]);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    query1201.destroy()
    render_bundle_encoder1201.popDebugGroup();
    const array9 = new Float32Array([-0.5, -0.25, 0.0, -0.25, 0.75, 1.0, -0.75, 0.75, -0.5, 0.75, 0.25, 0.25, 0.5, -0.5, 0.0, 0.75, -0.25, -0.5, -0.25, -0.5, 1.0, 0.75, 0.75, -0.5, -1.0, -0.5, -1.0, 0.5, 1.0, 0.25, 0.0, 0.25, 0.5, 0.5, -0.75, -0.5, -0.5, 0.5, -0.5, -0.5, 0.5, -0.75, -0.5, -0.5, -1.0, -1.0, 1.0, -0.25, -0.75, -0.75, 0.0, -0.25, 0.75, -1.0, 0.25, -1.0, -0.75, -0.25, -0.75, -0.5, 0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.0, -0.25, 0.75, 0.0, -0.25, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, -0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 0.5, -0.25, -0.25, -0.25, 0.25, 0.0, 0.0, 0.0, -1.0, 0.5, -0.25, -0.75, 1.0, ]);
    
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query1203.destroy()
    render_bundle_encoder1202.pushDebugGroup("group_marker");
    device120.destroy();
    
    query003.destroy()
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    device150.destroy();
    const array10 = new Float32Array([0.75, -1.0, 0.25, 0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -0.25, 0.5, 0.0, -1.0, -0.25, 0.0, 1.0, 0.5, -1.0, -0.75, -0.75, 0.0, 0.25, -1.0, 0.5, 0.75, -0.75, 0.0, -1.0, 0.25, 0.5, -0.75, -1.0, 0.0, 0.75, 0.5, -0.25, -0.5, 1.0, -0.25, -1.0, 1.0, -0.25, 0.5, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, -0.75, 0.0, -0.5, 1.0, 0.75, -0.25, 0.0, 0.25, 0.5, 0.0, 0.0, 0.75, -1.0, -0.5, -0.5, -1.0, 0.5, -1.0, 0.75, 0.25, -0.75, -0.5, -0.75, 0.5, -0.5, -0.25, 0.25, -0.75, -0.75, 0.0, 0.25, 0.25, -0.25, 0.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.0, 0.75, -0.25, 0.5, -0.25, -0.5, 0.5, ]);
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array11 = new Float32Array([1.0, -1.0, 0.75, 1.0, 0.25, 0.25, -0.5, -0.75, 0.0, -0.75, 0.0, 0.5, -0.75, -1.0, 0.75, -1.0, -0.25, -0.5, -0.5, -1.0, -0.25, 0.5, -0.5, 0.5, -0.25, 0.5, 0.75, -0.25, -0.25, 0.75, -1.0, -1.0, 0.25, 0.25, -0.25, -0.25, -0.5, -0.75, 0.5, 0.0, -0.5, 0.75, 1.0, -0.5, 0.0, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, -0.75, 0.25, -0.5, 0.5, -0.75, -1.0, -0.5, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, 0.0, -0.75, -1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -1.0, 0.5, 0.25, -1.0, -0.75, -0.5, 0.25, -0.75, 0.75, 1.0, 0.5, 0.25, 1.0, 0.25, 1.0, 0.25, -0.75, 0.0, -0.25, 0.0, 0.0, -0.25, 0.25, 0.5, 0.75, -1.0, -0.25, -0.25, ]);
    render_bundle_encoder1101.insertDebugMarker("marker");
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    buffer402.destroy()
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    
    
    
    query1001.destroy()
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    query400.destroy()
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    device130.destroy();
    device160.destroy();
    render_bundle_encoder202.popDebugGroup();
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1900 = device190.createBindGroupLayout({ 
        label: "bind_group_layout1900",
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
    
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    device140.destroy();
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    device190.destroy();
    device60.destroy();
    const query1900 = device190.createQuerySet({
        label: "query1900",
        type: "occlusion",
        count: 32,
    });
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    render_bundle_encoder1800.insertDebugMarker("marker");
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    
    render_bundle_encoder1800.pushDebugGroup("group_marker");
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    device170.destroy();
    
    query1900.destroy()
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer400.destroy()
    
    const bind_group_layout1801 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1801",
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
    
    render_bundle_encoder1800.popDebugGroup();
    render_bundle_encoder1800.pushDebugGroup("group_marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    device150.destroy();
    var shader_module2000_code = "";
    try {
        shader_module2000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2000 = await device200.createShaderModule({ label: "shader_module2000", code: shader_module2000_code })
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    device180.destroy();
    query200.destroy()
    const sampler2000 = device200.createSampler( { label: "sampler2000" } );
    device200.destroy();
    device160.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    buffer601.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    device130.destroy();
    query401.destroy()
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device210.queue.writeBuffer(buffer2100, 0, array10, 0, array10.length);
    const array12 = new Float32Array([-1.0, 0.25, -0.25, -1.0, 0.5, -1.0, 1.0, -0.5, -0.75, -0.75, -0.75, -0.25, -0.5, -1.0, -0.25, -1.0, 0.5, -1.0, -0.5, -0.25, -0.75, -0.75, -0.5, -0.25, -0.25, 0.0, 0.25, 0.5, 0.25, 0.0, 0.0, 0.75, 0.75, 0.25, 0.25, -1.0, 1.0, -0.75, 1.0, 0.5, 1.0, 0.0, -1.0, -0.25, -0.5, 0.5, 0.75, -0.25, 0.0, 0.25, 0.0, -0.75, 0.25, 0.75, 0.25, -0.5, -0.5, 0.0, 0.0, 1.0, 0.5, -0.75, 1.0, 0.75, -0.5, -0.25, 0.0, 1.0, -0.25, 0.5, 0.5, 1.0, -0.5, -0.5, 0.5, 1.0, -0.25, 0.0, 1.0, 1.0, 0.25, -1.0, -1.0, 1.0, 0.75, -1.0, -0.5, 0.75, 1.0, -0.75, 1.0, -0.25, 0.0, 0.0, 0.25, 0.0, -0.75, 0.0, 0.75, 0.0, ]);
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    query000.destroy()
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout2100 = device210.createBindGroupLayout({ 
        label: "bind_group_layout2100",
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
    
    
    const sampler2100 = device210.createSampler( { label: "sampler2100" } );
    var shader_module2100_code = "";
    try {
        shader_module2100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2100 = await device210.createShaderModule({ label: "shader_module2100", code: shader_module2100_code })
    device120.destroy();
    render_bundle_encoder2100.pushDebugGroup("group_marker");
    const sampler2101 = device210.createSampler( { label: "sampler2101" } );
    
    const sampler2102 = device210.createSampler( { label: "sampler2102" } );
    
    query000.destroy()
    
    
    
    device140.destroy();
    
    
    
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
    
    device210.destroy();
    query1800.destroy()
    const array13 = new Float32Array([-1.0, 0.75, 0.75, -0.25, 0.5, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, -0.25, -1.0, -0.75, 0.0, 0.25, 0.5, -0.5, 0.75, -0.75, -1.0, -0.5, -1.0, -1.0, -0.25, -0.75, 1.0, -0.5, 0.5, -0.25, 0.75, -0.5, 0.0, 0.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.25, -0.25, 0.5, 0.0, 0.5, 1.0, 0.5, 1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.75, -0.5, 0.0, -0.75, -1.0, -1.0, -0.25, -1.0, -0.75, 0.5, 0.0, 0.75, 0.5, 0.25, -0.75, 0.5, -0.75, 0.0, 1.0, 0.75, 1.0, -0.5, 0.75, 0.0, 0.25, -0.25, 1.0, -0.5, 0.75, -1.0, 0.5, -1.0, 1.0, -0.5, 0.5, -1.0, -0.5, 0.75, -0.75, 1.0, 0.75, -0.25, 0.25, 0.75, -0.25, 0.5, ]);
    const array14 = new Float32Array([1.0, 0.5, 0.75, 1.0, 1.0, 0.75, 0.75, -1.0, -0.5, 0.5, 1.0, 0.25, 0.5, 0.5, -0.75, -1.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.75, 1.0, 1.0, -1.0, 0.25, 0.25, 0.75, -0.25, 0.0, -0.5, 0.75, -0.25, -0.5, 0.75, 0.0, -1.0, 0.75, -0.25, -1.0, -0.25, 0.5, 0.75, 1.0, 0.25, 1.0, -0.25, 0.25, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 0.5, 0.0, 0.0, 0.0, 0.5, 0.25, 0.75, 0.25, -0.25, 0.25, -1.0, 0.75, -0.5, -0.25, 1.0, 1.0, 1.0, -0.5, 0.75, -0.75, 0.75, -0.75, 0.25, 0.5, 0.25, 0.5, 0.75, -1.0, 0.25, -0.5, 0.0, 0.0, 0.75, 0.75, 1.0, -0.25, 0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.5, 0.75, ]);
    device150.destroy();
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder1101.popDebugGroup();
    device90.queue.writeBuffer(buffer900, 0, array0, 0, array0.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device70.destroy();
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    
    const buffer2101 = device210.createBuffer({
        label: "buffer2101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    device60.destroy();
    device130.destroy();
    query1900.destroy()
    
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
    
    const buffer2000 = device200.createBuffer({
        label: "buffer2000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    render_bundle_encoder1800.insertDebugMarker("marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1101.insertDebugMarker("marker");
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    query300.destroy()
    device170.queue.submit([]);
    const sampler2001 = device200.createSampler( { label: "sampler2001" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    
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
    query1000.destroy()
    const array15 = new Float32Array([-0.25, 1.0, -1.0, -1.0, -0.25, 0.75, -0.25, -1.0, 0.5, 0.0, -0.25, -0.25, 1.0, 0.0, 0.25, -0.75, -0.75, 0.5, -0.75, 0.0, 0.25, 0.75, 0.75, 1.0, 0.5, 0.0, 0.0, -1.0, -0.75, -1.0, -1.0, -0.75, 0.75, -0.75, -0.5, -0.25, -0.25, 0.25, -0.5, -0.25, 0.25, 0.5, -1.0, 1.0, 1.0, -0.75, -0.5, 0.75, -0.25, 1.0, -1.0, -0.5, -1.0, -0.5, 1.0, -1.0, 0.5, 0.0, -0.5, -0.5, 0.5, 0.0, 0.5, -0.25, 0.75, 0.0, 1.0, 0.75, -0.25, 0.25, 0.0, 0.0, -0.5, -0.25, 0.5, 0.25, -1.0, -1.0, 0.25, 1.0, -0.75, -0.25, -1.0, 0.25, 0.75, -0.5, 0.5, 0.75, 0.25, 0.75, 0.25, -0.5, 1.0, -0.5, -0.25, -1.0, -0.5, 0.25, 0.5, 0.25, ]);
}