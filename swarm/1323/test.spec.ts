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
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array0 = new Float32Array([0.5, 1.0, 0.75, -0.75, -0.5, 0.25, -0.5, 0.25, 0.0, 0.75, 1.0, 1.0, 1.0, -0.5, 0.5, 0.25, 0.75, -0.75, 0.0, 0.25, -0.75, -0.25, 0.5, -0.75, -0.75, 0.75, 0.5, 0.25, 1.0, -0.75, 0.0, 0.25, -0.5, -0.25, -0.25, 0.25, -0.75, -1.0, 1.0, 0.5, -1.0, -0.25, 0.5, 0.75, 0.75, -0.5, 0.75, 1.0, -0.5, -0.5, -1.0, 0.75, -1.0, -0.5, -0.5, -0.75, -1.0, 0.75, -0.75, -0.25, 0.25, -0.75, 0.0, -0.5, -0.25, 0.25, 0.5, -0.75, -1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 0.75, 0.25, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.25, -0.25, 0.5, -0.25, -1.0, -0.5, 0.75, 0.5, -1.0, 0.75, 0.75, 0.25, 0.5, 0.25, 1.0, -1.0, -0.75, 1.0, ]);
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device10.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const array1 = new Float32Array([-0.75, -1.0, 0.75, -0.75, 0.25, 0.25, 0.5, 1.0, 0.25, 0.25, 0.0, -1.0, 0.0, 0.5, 1.0, -0.25, -0.5, -0.75, 0.75, -0.25, -0.75, -0.25, -1.0, 1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 0.25, -0.75, -0.25, -1.0, 0.0, 0.75, 0.5, 1.0, -0.75, 0.25, 0.25, -0.25, 0.5, 1.0, 0.25, 0.0, -0.25, 0.25, -1.0, 0.0, 1.0, 0.5, -1.0, 0.25, -1.0, -0.75, 0.25, -0.5, -0.25, -0.75, 0.75, -0.25, -1.0, -0.75, 0.5, -1.0, -1.0, 0.5, -0.25, -0.5, -0.75, 0.75, 0.5, 0.25, 0.5, 1.0, -0.75, 0.0, 0.0, -0.5, 0.75, -1.0, 0.75, -1.0, -1.0, -0.25, -1.0, -0.5, -0.5, 1.0, -1.0, 0.75, 0.75, 1.0, 0.75, 1.0, -0.5, -0.25, -0.5, -0.25, -0.25, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.destroy();
    const array2 = new Float32Array([-1.0, -0.75, -0.5, -1.0, 0.25, 0.25, -0.5, -0.75, -0.75, -0.75, 0.5, 0.25, -1.0, -1.0, -1.0, -0.25, -0.75, -0.5, -1.0, -0.5, -0.25, -0.75, -1.0, -0.25, -0.25, 1.0, -0.25, -1.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.5, 1.0, 0.0, 0.5, -1.0, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.0, 0.0, 1.0, -0.5, -0.5, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, -0.75, 1.0, -0.5, 0.75, 0.75, -0.75, -0.25, 1.0, 0.25, -0.5, -0.25, 0.25, 1.0, -0.5, 0.0, -1.0, 1.0, -0.75, 0.75, 0.25, 0.75, 1.0, -0.75, -0.5, -0.75, 1.0, -0.5, 1.0, -0.75, -0.5, -0.75, 1.0, 0.25, -0.5, -0.5, 0.5, -0.5, -0.25, -0.5, -0.75, ]);
    const array3 = new Float32Array([0.75, 1.0, -1.0, 0.0, 0.5, 0.75, 0.0, 0.5, 1.0, -0.5, 0.25, 0.75, 0.75, -0.5, -0.75, -0.75, -0.5, 0.0, 0.5, 0.25, -0.75, 0.0, 0.0, 1.0, -1.0, 0.0, 0.5, -0.75, -1.0, 0.0, 0.25, 0.25, -0.25, 0.0, 0.0, 0.25, 1.0, 0.75, -0.25, 0.0, 0.25, -0.75, 0.75, 0.5, 0.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.25, 1.0, -0.75, 1.0, 0.5, 0.0, -0.25, 0.25, 0.0, 0.25, 0.75, 0.25, -0.25, 0.25, -0.25, -0.5, 0.5, -0.25, -0.25, 0.25, -0.25, -0.75, 0.75, 0.0, -0.5, -0.25, -0.25, 1.0, 0.25, -0.25, 0.75, -0.25, -0.75, -0.75, -0.25, -1.0, 0.0, 0.0, -0.75, 0.75, -0.5, -0.75, -1.0, -0.75, 1.0, -0.75, 1.0, -1.0, 1.0, 0.25, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device30.queue.submit([]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_bundle_encoder300.setPipeline(render_pipeline302);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query300.destroy()
    device30.destroy();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device20.pushErrorScope("out-of-memory");
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array4 = new Float32Array([0.5, 0.25, 1.0, 0.0, 0.75, 0.75, -0.5, 0.0, -0.75, 0.25, 0.0, 0.0, -0.75, -0.5, -0.5, 0.25, 0.25, 0.0, 0.0, 0.75, -0.25, 0.75, -1.0, -1.0, 0.25, -0.5, 0.0, 0.25, -1.0, 0.75, 0.0, -0.75, 0.25, 0.25, 0.75, 0.75, 0.75, -1.0, -1.0, 0.25, -1.0, 0.75, -1.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.0, 0.75, -0.75, 0.25, 0.25, -0.75, -0.25, 0.75, -1.0, 0.0, -0.75, 0.75, 1.0, 0.0, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -0.25, -0.25, -0.25, 0.5, -1.0, 0.0, -0.5, 0.0, 0.25, -0.25, -0.75, -0.5, 0.25, -0.5, 0.25, -0.75, 1.0, 0.75, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, 0.5, -0.5, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.destroy();
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder200.popDebugGroup();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device40.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    query202.destroy()
    device20.pushErrorScope("out-of-memory");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
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
    query600.destroy()
    query400.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder200.setPipeline(render_pipeline201);
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    query400.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    query400.destroy()
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
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
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    query201.destroy()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    query201.destroy()
    const array5 = new Float32Array([1.0, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, 0.0, -0.5, -0.25, 1.0, 0.25, -0.5, 0.0, -0.5, 0.5, -0.75, 0.25, -1.0, 1.0, 0.0, -0.25, -0.75, 0.75, -1.0, -0.25, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, -0.5, 1.0, 0.0, 1.0, -0.75, 0.75, -0.25, -0.25, -0.5, 0.75, 0.25, 0.5, -1.0, -0.5, 0.75, 0.75, 0.75, -1.0, -0.75, -0.75, -0.25, -0.5, 0.0, -0.25, -0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 0.25, 0.5, 0.25, 0.5, -1.0, -0.75, 0.25, 0.5, 0.25, -0.25, -1.0, 0.25, 0.0, 0.75, -0.5, -0.5, 0.75, 0.75, -1.0, 0.0, 0.5, 0.0, -1.0, 0.75, -0.5, -0.5, 0.0, -0.5, 0.0, 0.0, 0.25, -0.5, 0.0, 0.5, -1.0, -1.0, 0.5, 0.0, ]);
    device20.destroy();
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    
    
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    
    render_bundle_encoder600.popDebugGroup();
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    
    const array6 = new Float32Array([0.75, 0.0, 0.25, -0.5, 0.0, -1.0, -0.5, 1.0, -0.5, -0.25, -0.5, 1.0, -0.25, -0.75, -0.25, 0.25, -1.0, -0.5, 0.0, -0.25, -1.0, 0.5, 0.75, 0.5, 1.0, -0.5, 0.0, 0.75, -1.0, -0.75, 0.25, 0.75, -0.25, 0.0, -0.75, -1.0, 0.0, -0.25, 0.75, 0.75, -0.25, 0.25, 0.0, -0.25, -0.75, 0.75, 1.0, 0.5, 0.25, -0.75, -1.0, 0.0, -0.25, 0.25, 0.25, 0.0, 0.25, 1.0, -1.0, 1.0, 0.25, 0.0, -0.5, 0.0, 0.75, -0.75, -0.5, 1.0, 0.5, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, 0.75, -1.0, 0.75, -0.75, 0.0, 0.5, -0.5, -0.75, 1.0, 0.75, 0.5, -1.0, -0.5, 0.5, -0.25, 0.75, 0.0, 0.25, -0.5, -0.25, 0.0, -0.25, -1.0, -0.25, 1.0, ]);
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout603]
    });
    query604.destroy()
    
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    query603.destroy()
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    query602.destroy()
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.5, 0.5, -1.0, 0.0, 0.5, 0.75, 0.0, -0.5, -1.0, 0.5, 1.0, 0.75, 0.5, 0.5, 0.75, 0.75, 0.25, 0.75, -1.0, -0.75, 0.75, -0.75, 0.5, -0.25, 1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, 0.25, 0.5, 0.0, 0.0, 0.25, -0.25, 0.5, -0.25, -0.5, 0.25, 0.0, -0.75, 0.25, -0.75, 0.5, -0.25, -0.75, 0.0, -0.5, -0.5, -0.25, 0.75, -0.75, 0.25, 0.75, -1.0, -0.75, -0.25, 0.75, 0.0, 0.0, -0.75, 1.0, -0.75, 0.25, 1.0, -1.0, 0.0, -0.75, 1.0, -1.0, -1.0, 0.75, -0.25, -0.25, 0.0, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 0.5, 0.5, 0.0, 0.75, 0.75, 0.5, -0.5, -0.5, 0.75, 0.5, 0.75, 0.25, 1.0, 0.25, ]);
    device60.destroy();
    
    
    
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    query300.destroy()
    const array8 = new Float32Array([0.75, 0.5, 0.75, -1.0, -0.75, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, -0.5, -0.75, -0.75, 0.0, 0.25, 0.75, -0.5, -0.5, -1.0, 0.5, 0.25, -0.75, 1.0, 0.0, 0.75, -0.5, -1.0, 0.75, 0.5, -0.75, -0.75, -0.25, -0.75, -1.0, -1.0, 0.0, 0.5, -1.0, 0.0, 1.0, -0.75, 0.75, 0.0, 0.0, -0.25, 1.0, -0.75, 0.75, 0.0, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, 0.25, -0.5, 0.5, 0.0, -0.25, -0.75, 0.0, -0.5, -0.25, -0.75, -0.75, 1.0, 0.0, -1.0, -0.5, 0.0, 0.5, -0.75, 0.25, 0.0, -0.75, 0.0, -1.0, 0.5, -0.25, -0.75, -0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 0.75, 1.0, -0.5, 1.0, -1.0, 0.25, 0.0, -0.75, -1.0, 0.25, -0.25, -0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    
    
    
    
    
    
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    device70.destroy();
    
    
    
    
    
    device60.pushErrorScope("out-of-memory");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    device70.destroy();
    const array9 = new Float32Array([0.75, 0.0, 0.25, -0.25, 0.75, -0.75, 1.0, 0.25, 0.0, -1.0, -0.25, -1.0, -0.75, -0.25, 0.0, -1.0, 0.25, -0.25, -0.25, 0.75, 0.5, -0.25, -0.25, -1.0, 0.5, 0.0, -1.0, -0.75, -1.0, 1.0, -0.5, 0.75, -0.25, 0.0, -1.0, -0.5, -0.5, -1.0, -0.25, 0.75, 0.25, -0.75, 0.75, -0.5, -0.75, 0.75, 0.0, -0.25, 0.0, 0.0, 0.5, 1.0, -1.0, -0.25, 0.25, 0.5, 1.0, -1.0, -0.75, 0.0, 0.25, -0.5, 0.0, 1.0, 0.0, 0.5, -0.75, -1.0, 0.5, 1.0, 1.0, -0.75, 0.25, 0.5, 0.5, 0.0, 0.5, 1.0, 1.0, -1.0, -0.75, 1.0, -0.5, 0.5, -0.25, 0.0, -0.75, 1.0, 0.0, -0.25, 0.5, -0.75, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, -0.75, -0.75, ]);
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array10 = new Float32Array([-0.5, -0.75, -0.5, -1.0, -1.0, -0.75, 1.0, 1.0, -0.5, -1.0, 0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.0, -0.5, -1.0, 0.25, -0.25, 0.25, 0.25, 0.0, 1.0, 0.0, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, -0.25, 1.0, 0.5, -0.75, -0.5, 0.25, -0.25, -1.0, 0.5, -0.5, -0.25, -0.25, -1.0, -0.25, -1.0, -0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, 0.75, 0.0, -0.5, -0.75, -0.25, 0.0, 0.5, -0.25, 0.5, -0.5, 0.25, -0.75, 0.0, -0.25, 0.25, 0.0, 1.0, 0.0, -1.0, -0.25, -0.5, 0.75, -0.5, -0.25, 1.0, 1.0, 0.0, -1.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.0, 0.0, 1.0, -0.25, -0.5, 0.0, -1.0, -0.25, -1.0, -1.0, 0.75, 0.5, -0.25, ]);
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array11 = new Float32Array([0.0, -0.75, -0.75, 0.75, -0.75, 0.25, -0.75, -0.5, -0.75, -1.0, -0.75, 0.25, 0.25, 0.0, 0.5, 1.0, 0.25, 0.5, -0.25, 0.0, 0.25, 0.25, -0.75, -0.75, 0.5, -0.5, -0.75, -1.0, 1.0, -1.0, -0.75, -0.75, 0.25, -0.5, 0.25, 0.5, -1.0, -0.75, 0.0, -0.75, 0.75, 0.5, 0.25, 1.0, -0.75, 0.0, -0.75, -0.75, 1.0, 0.5, 1.0, -0.5, 1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.25, -0.5, -0.75, 0.5, 0.25, 1.0, -0.25, 0.5, 1.0, -1.0, -0.5, 0.75, -1.0, -1.0, 1.0, -0.75, -1.0, 0.5, -1.0, 0.5, -0.25, -0.75, -0.5, 0.5, 0.75, 0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 1.0, 1.0, -1.0, -1.0, 0.75, -0.25, -0.5, 0.5, -0.75, 0.75, -0.25, ]);
    
    
    
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device110.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device80.destroy();
    device70.pushErrorScope("out-of-memory");
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device80.destroy();
    
    
    
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device90.queue.writeBuffer(buffer900, 0, array5, 0, array5.length);
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout605]
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device90.destroy();
    render_bundle_encoder100.popDebugGroup();
    
    const array12 = new Float32Array([0.5, -0.5, 1.0, -1.0, 1.0, 1.0, -1.0, -0.5, 0.25, -0.5, 0.5, 0.0, 1.0, -0.5, -0.25, 0.75, 0.25, 0.75, 0.5, -0.25, 0.5, -0.5, 0.5, -0.25, 0.5, -0.75, -0.25, 0.5, -0.75, -1.0, -0.75, -0.25, 0.25, 0.75, 0.25, 0.5, 0.25, 0.75, -0.75, -1.0, -0.25, -0.5, -0.75, 1.0, 0.75, 0.25, -0.25, 0.5, 0.25, -0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 0.0, 0.75, 0.25, 1.0, -0.75, -1.0, -0.25, 0.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.0, -0.75, 0.5, -0.75, 0.25, 0.25, 0.25, -0.75, 0.25, 0.75, -1.0, -0.5, 0.25, 1.0, -1.0, -1.0, 0.0, -0.5, -0.75, -0.5, 0.75, 0.75, 0.5, -0.5, -0.5, -0.75, 0.25, 0.25, -1.0, 1.0, -0.25, ]);
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device50.destroy();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout604]
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    device00.destroy();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout603]
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer302, 0, array11, 0, array11.length);
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    render_bundle_encoder501.popDebugGroup();
    device20.pushErrorScope("internal");
    const array13 = new Float32Array([-0.25, 0.5, 0.0, 1.0, -0.75, 0.25, -0.75, -0.75, 0.0, -1.0, -0.75, -0.75, -0.5, -0.25, 0.75, 0.25, -0.25, -0.25, -0.75, -1.0, 0.25, -1.0, -0.25, 0.25, -0.5, 0.0, 1.0, 0.25, 1.0, 0.5, 0.75, 1.0, 0.75, 0.75, -0.75, -0.75, 0.0, 0.5, -0.25, -0.75, -1.0, 0.5, -1.0, 1.0, 0.5, 0.5, 0.25, 0.0, 1.0, 0.25, 0.75, -0.5, -1.0, 0.75, -0.75, 0.0, 0.0, 0.25, 1.0, 0.5, -0.5, 0.75, -0.5, -0.5, 0.75, 1.0, 0.75, -0.75, 0.25, 0.75, 0.0, -1.0, 0.0, 0.25, 0.25, 0.5, -0.5, 0.25, -0.5, 0.0, 0.5, 0.5, 0.5, 1.0, -0.75, -0.75, 0.5, 0.75, 0.75, 0.75, 0.25, 0.75, -0.75, 1.0, -0.75, 0.0, 0.0, -0.25, 0.0, -1.0, ]);
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    device130.destroy();
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
    device00.pushErrorScope("out-of-memory");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device40.destroy();
    
    device40.destroy();
    
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
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
    const array14 = new Float32Array([-1.0, 0.75, 0.5, -0.75, -0.25, 0.0, -0.5, -0.25, -0.5, 0.0, 0.5, 0.25, -0.75, 0.5, -0.25, 1.0, -1.0, 0.25, 1.0, -0.25, -1.0, 0.25, -0.25, -1.0, 0.5, 1.0, -0.75, -1.0, -0.75, -0.75, 0.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.5, -0.75, -1.0, 0.0, -0.25, -0.75, 0.75, 0.25, -0.75, -1.0, 0.75, -0.25, 0.25, -0.75, 0.25, -0.5, 0.5, -1.0, -0.25, 0.0, 0.0, 0.5, -0.75, 0.75, 0.75, 0.25, 0.25, 0.75, -1.0, -0.5, 0.0, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, 0.0, -1.0, -0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, 0.25, 0.25, 0.25, 0.25, 0.25, 0.75, -0.5, -0.25, -0.5, 0.5, 0.25, 0.0, 0.0, 1.0, 1.0, ]);
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    render_bundle_encoder600.setPipeline(render_pipeline605);
    device100.pushErrorScope("validation");
    
    
    device50.destroy();
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1001]
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    device100.queue.submit([]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1001]
    });
    
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device100.queue.writeBuffer(buffer1001, 0, array2, 0, array2.length);
    
    device100.queue.writeBuffer(buffer1001, 0, array1, 0, array1.length);
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device110.pushErrorScope("validation");
    device120.pushErrorScope("internal");
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    device100.queue.writeBuffer(buffer1001, 0, array0, 0, array0.length);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.queue.submit([]);
    device100.queue.submit([]);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.queue.submit([]);
}