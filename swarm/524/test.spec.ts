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
    const array0 = new Float32Array([0.0, -1.0, 1.0, -1.0, 0.5, 1.0, 0.5, -0.75, -0.75, -0.75, 1.0, 0.5, -0.75, 0.0, -0.75, -1.0, 0.0, -0.75, -1.0, 0.25, 1.0, 0.0, 0.5, -0.25, 0.75, 0.0, 0.25, 0.5, -0.5, 0.0, -0.25, -0.75, 0.25, 0.5, -0.75, 0.25, -1.0, -0.5, 0.0, -0.25, 0.5, 0.75, 0.0, 0.25, 0.75, 0.25, 0.5, 0.5, 0.75, 0.0, -0.25, 1.0, -0.5, 0.0, -1.0, 0.5, -0.75, -0.25, 1.0, 1.0, -0.25, -0.25, 1.0, -0.75, -0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.25, 0.0, -0.5, 1.0, 0.25, -1.0, -1.0, -0.25, 0.0, 0.5, 0.25, 0.25, -1.0, 1.0, 1.0, 0.75, 0.5, -1.0, -0.5, -0.25, 0.0, -1.0, 0.5, 0.75, -0.25, 0.5, 0.0, 0.0, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.75, 0.5, -0.25, 0.75, 0.25, 0.25, 0.25, -1.0, -0.5, -0.5, 0.75, 0.25, -0.25, 1.0, -1.0, 0.75, 0.25, -0.5, 0.75, -0.5, -1.0, 0.0, 0.75, 1.0, -1.0, -0.5, -0.75, -0.25, 0.25, 0.5, -0.25, -1.0, -0.75, 0.25, -1.0, 0.75, -0.25, -0.75, 0.75, 0.0, -1.0, 0.75, 0.5, -0.75, 0.5, 0.25, 0.5, -0.5, -0.5, 0.5, 0.25, 0.5, -0.25, 0.0, -1.0, -1.0, -0.5, 0.25, 0.5, -0.25, 0.0, -1.0, 0.75, -0.5, -0.5, 0.75, -0.5, -0.5, 0.5, 0.0, 1.0, 1.0, 0.75, 0.5, 0.75, 0.75, 0.25, 0.75, -0.5, 0.75, -0.75, 0.75, 1.0, 0.75, 1.0, 0.25, -0.75, 0.75, 0.25, 0.75, 0.0, 0.25, 1.0, 0.0, 0.75, -0.75, -0.5, 0.75, -1.0, -0.75, ]);
    const array2 = new Float32Array([-0.25, 0.5, -0.75, -0.25, 1.0, -0.25, 0.25, 0.0, -0.75, -1.0, 0.0, -0.75, -0.25, 1.0, 0.5, -1.0, -0.5, -0.5, -1.0, 0.0, 0.0, 0.75, 1.0, -0.25, -0.25, 0.5, 1.0, 0.0, 0.75, -1.0, -1.0, 0.5, 0.75, 0.25, 0.5, 1.0, 1.0, 0.25, -1.0, -0.25, -1.0, 0.75, -1.0, 1.0, 0.5, -1.0, 0.0, -0.75, -0.5, 1.0, 1.0, -0.75, 0.0, 1.0, 1.0, -0.75, 0.25, 0.0, -0.5, 1.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.25, -0.25, 0.25, -1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.5, 0.25, -1.0, -0.5, 0.5, -1.0, -1.0, 0.0, 1.0, 0.25, -1.0, 0.0, 0.0, 1.0, 0.5, 0.0, 0.5, -0.25, 0.25, 1.0, -0.75, -0.5, -0.5, 1.0, 0.5, -1.0, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.destroy();
    const array3 = new Float32Array([0.75, -0.75, -0.25, -0.25, 0.5, 0.75, 1.0, 0.5, 0.0, 1.0, -1.0, 0.5, 0.0, -1.0, 0.0, -0.25, -0.25, -0.5, -0.5, 0.5, -0.5, 0.5, -0.75, 0.5, -0.75, 0.0, -1.0, -0.25, 1.0, 0.75, 0.25, -0.25, -0.25, 0.0, -0.75, -0.25, 0.5, -0.25, -0.75, -0.75, -1.0, 1.0, 1.0, -0.25, 0.75, -1.0, -0.75, -0.5, -0.25, 0.5, 0.5, -0.5, -0.75, 0.5, 0.5, 0.5, -0.5, 0.0, 0.5, -0.75, -0.5, -1.0, 0.0, -1.0, 0.25, 0.25, 0.25, -1.0, -0.25, 0.0, -0.25, 0.5, 0.0, -1.0, 0.75, -0.75, 0.25, -1.0, -0.25, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, 0.0, 0.25, -0.25, -0.25, -0.5, 1.0, -0.25, -1.0, -0.25, -0.5, 0.25, -0.75, -1.0, 0.25, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const array4 = new Float32Array([-0.5, 1.0, 1.0, -0.25, -0.5, 0.75, 1.0, -0.75, -0.5, -0.75, -0.25, 0.0, -1.0, 0.75, -0.75, -0.5, -1.0, -1.0, 1.0, 0.0, 0.25, 1.0, 0.75, 0.25, 1.0, -0.75, -1.0, 0.25, -0.75, -1.0, -1.0, 0.25, 0.25, -1.0, 0.5, 0.25, 0.25, -0.25, -0.75, -1.0, -0.5, -0.25, 0.0, -0.75, -1.0, -0.5, -0.25, -0.5, 1.0, 0.5, -0.75, -0.5, -0.5, 0.75, 0.5, 0.5, 0.0, -0.25, 0.75, -1.0, 0.0, 0.25, 0.25, -0.25, -0.75, -0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 0.5, -0.25, 0.0, 0.75, -0.75, -0.25, -0.25, 0.0, -0.25, -0.75, -1.0, 0.25, -0.5, -0.5, -0.75, -0.75, -1.0, -0.75, 0.25, 1.0, 0.5, -0.5, -0.5, -1.0, 0.25, -0.5, 0.0, 1.0, 0.0, ]);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.pushErrorScope("validation");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const array5 = new Float32Array([0.25, 0.5, 0.25, 0.25, 0.5, -1.0, 0.0, -0.75, 0.25, 0.5, -1.0, -1.0, 0.25, 0.25, -0.25, -0.25, 0.0, 0.5, 1.0, 1.0, -0.5, -1.0, -0.5, 0.75, 0.25, 1.0, -0.25, -0.75, 0.75, -0.25, 0.25, 0.5, -0.75, 1.0, -1.0, -0.25, -0.75, -0.75, 0.75, -0.25, -0.25, 0.75, 0.5, -0.75, 0.75, 1.0, 0.0, -1.0, 0.75, 0.25, 0.25, 1.0, 0.25, 1.0, -0.75, 0.5, 1.0, -0.75, 0.25, 0.75, 0.75, 0.0, -0.5, 1.0, -1.0, 0.0, 0.5, -0.25, -0.5, -0.25, 0.5, 1.0, 1.0, -1.0, 1.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.5, 0.25, -0.25, 1.0, 0.75, 1.0, 0.25, 0.5, -0.5, -1.0, 0.75, -0.5, 0.5, -0.75, -0.75, 0.5, 0.25, 0.25, -0.75, 1.0, ]);
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    buffer301.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    texture301.destroy();
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
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
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    device40.pushErrorScope("internal");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const array6 = new Float32Array([0.75, -0.75, -0.5, 0.25, 0.25, -0.75, 0.25, -0.5, -0.75, -0.5, 0.0, -0.75, 0.25, -0.25, 1.0, 0.75, 0.75, -1.0, -0.75, 0.5, -1.0, -1.0, -0.25, 0.25, 0.0, 0.0, 0.0, 0.75, 1.0, 0.5, 1.0, 0.75, 1.0, 1.0, 0.0, 0.0, 0.25, -1.0, 1.0, 0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.5, -0.5, -0.75, 0.5, 1.0, -0.25, 0.25, -0.25, 0.75, -0.5, 0.75, 1.0, 0.5, 0.25, -1.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.0, 0.75, 1.0, -1.0, -0.5, 0.25, 1.0, -0.25, -0.5, -1.0, 1.0, -0.25, 1.0, 1.0, -0.5, 0.75, 0.0, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.75, 0.75, 0.5, 1.0, -0.25, 0.5, 0.25, -0.75, 0.0, ]);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device40.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    device30.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-0.25, 0.0, 0.75, 1.0, 1.0, 0.25, 0.0, -1.0, -0.75, 0.75, 0.0, -0.75, 0.0, 0.0, 0.75, 1.0, 0.25, 1.0, 0.0, 0.25, -0.75, 0.25, 0.75, 0.75, 1.0, -0.75, -0.25, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, 0.5, -0.25, 0.25, 0.0, 0.75, 0.0, -0.5, 0.75, -1.0, 0.75, 0.0, 0.0, 0.25, 0.25, 0.0, 0.75, -0.5, 0.75, -0.25, 0.5, 1.0, 1.0, 0.75, 0.5, 0.5, -0.5, -0.25, 0.0, 0.0, 0.5, -0.75, 0.25, 0.0, -0.5, -0.5, 0.75, 1.0, 1.0, 0.0, 1.0, -1.0, -0.5, 1.0, 0.25, -0.5, 0.5, -0.75, 0.25, 0.5, 0.25, 0.75, 0.25, 1.0, -1.0, -0.5, 0.25, 0.25, -1.0, 0.75, -0.25, -0.25, -0.75, 0.5, -0.25, -0.75, 0.75, -1.0, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    query401.destroy()
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer300.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    buffer305.destroy()
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer304.destroy()
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    texture302.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query300.destroy()
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const array8 = new Float32Array([-0.25, -1.0, 1.0, 1.0, 0.0, 0.25, 0.75, 0.25, 0.5, 0.25, 0.0, -0.25, 0.5, 0.0, -0.75, 0.0, 0.25, -0.5, -0.25, -1.0, -0.75, 0.75, 0.5, 1.0, -1.0, -0.75, 0.5, 0.0, 0.5, -1.0, -1.0, 0.75, 0.25, -1.0, 0.5, 0.25, 0.5, -0.25, 0.0, 0.25, 0.0, 0.5, 0.25, -0.5, 0.0, 0.5, 0.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.5, -0.75, 0.75, 0.25, -0.75, 0.25, -0.25, -0.5, -0.5, 1.0, -1.0, 0.25, 0.5, -0.25, -0.75, 0.75, 0.0, 0.0, 0.5, 0.0, 0.25, -0.75, 0.75, 0.25, -0.25, 0.75, -1.0, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, 0.0, -1.0, -1.0, 1.0, 1.0, -0.5, -1.0, 0.5, -0.75, -0.25, -0.25, 1.0, 1.0, 0.5, -1.0, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    texture303.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    buffer302.destroy()
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout304]
    });
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const array9 = new Float32Array([-0.25, 0.25, 0.0, -1.0, -0.25, 0.5, -1.0, -0.75, 0.0, 0.5, 0.25, -1.0, -1.0, 0.5, 0.25, -0.5, 0.0, 0.25, -0.75, 0.0, 1.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.0, -1.0, -1.0, -0.75, 1.0, -1.0, 0.25, -0.25, -1.0, -1.0, 0.5, 0.0, -0.75, -0.75, -0.75, 0.25, -0.5, 0.0, 0.75, -0.5, 0.0, 0.75, -0.25, 0.75, -1.0, 0.25, -0.75, 0.5, -1.0, -0.75, -0.5, -0.75, 0.75, -0.75, 0.75, -1.0, 0.5, -1.0, 1.0, -0.75, 0.5, 1.0, 1.0, -0.5, 0.0, 0.5, -0.25, 0.5, -0.5, -0.5, -0.5, -0.75, 1.0, -0.5, -0.5, -0.75, 1.0, -0.75, -0.5, -0.75, 0.75, -0.25, 0.5, 1.0, 0.25, -0.75, 1.0, -0.5, 0.25, -0.25, 0.25, 0.0, -0.75, -0.25, ]);
    {
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer303.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    
    
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout303]
    });
    query401.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout303]
    });
    buffer306.destroy()
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    device50.pushErrorScope("validation");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device70.pushErrorScope("validation");
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query700.destroy()
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture701 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture700.destroy();
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
    texture701.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler407 = device40.createSampler( { label: "sampler407" } );
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
    
    query400.destroy()
    buffer401.destroy()
    texture400.destroy();
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    query400.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query402.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    query403.destroy()
    query404.destroy()
    
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    texture702.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query400.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const array10 = new Float32Array([-0.25, 0.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, 0.25, 0.75, -1.0, 0.75, -0.5, 0.75, -0.25, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 0.0, 1.0, -0.5, 0.75, 0.75, 0.0, -0.25, 0.25, 0.0, 0.25, 0.0, -0.25, 0.0, 0.25, -1.0, 0.5, 0.25, 1.0, 1.0, -0.5, -0.5, 1.0, -0.25, 0.5, -0.25, -0.5, -0.75, -0.75, -1.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.5, -0.75, -0.25, -0.75, 0.5, -0.5, 1.0, 1.0, 0.0, 0.25, -1.0, -1.0, -0.25, 0.0, 0.25, 1.0, -1.0, 1.0, -0.5, 0.75, 0.25, 0.5, 0.75, -0.75, 0.75, -0.25, -0.25, -0.75, 0.75, 0.5, 0.5, 0.25, -0.75, 1.0, -0.75, 1.0, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.25, 0.75, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
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
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    query500.destroy()
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    
    texture401.destroy();
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout703]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device80.destroy();
    
    query501.destroy()
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    
    query502.destroy()
    
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device90.destroy();
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
    
    query500.destroy()
    
    query403.destroy()
    const sampler408 = device40.createSampler( { label: "sampler408" } );
    
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder701.insertDebugMarker("marker");
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
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const array11 = new Float32Array([0.75, 0.0, 0.5, 1.0, -0.25, 1.0, 0.0, 0.5, -0.5, 0.0, 0.5, 0.75, 0.5, -0.75, 0.0, 0.5, 1.0, -1.0, -0.75, 0.5, 0.75, 1.0, 0.0, -0.5, 0.25, 1.0, 0.5, -0.25, -0.25, -1.0, 0.5, 0.25, -1.0, 0.0, -0.25, -1.0, 0.5, 0.25, 1.0, 0.25, 1.0, 1.0, 0.75, 0.25, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 0.25, -0.75, -0.25, -0.75, -0.25, -1.0, 0.0, 0.75, -0.25, -0.75, -0.75, 1.0, 0.25, 0.25, -0.75, 1.0, 1.0, 0.25, -0.5, 0.75, 0.0, 0.5, 1.0, 0.5, 0.25, 1.0, 0.25, -0.25, 0.5, 0.0, 1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.75, -1.0, 0.0, -0.25, -1.0, 0.25, 0.25, 0.0, 1.0, 0.5, 0.0, 0.0, 0.5, ]);
    
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    query402.destroy()
    texture500.destroy();
    const sampler409 = device40.createSampler( { label: "sampler409" } );
    
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout704]
    });
    device70.destroy();
    query401.destroy()
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    buffer402.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
}