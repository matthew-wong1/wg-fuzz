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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.5, -0.25, -0.25, -1.0, -0.5, 0.0, 0.25, 0.25, 0.0, 0.5, 0.75, 0.25, 0.75, 0.0, -0.5, 0.5, 0.0, -1.0, 1.0, 0.75, 0.75, -0.5, -0.25, 1.0, 0.25, -1.0, 0.0, 0.0, 0.5, 0.75, 1.0, -0.75, 1.0, -1.0, -1.0, 0.0, 0.0, -0.5, -0.25, -0.25, 1.0, 0.25, -0.75, -0.5, -0.75, -0.25, 0.75, 0.0, 0.75, -0.5, -0.25, 0.75, -0.5, 0.75, 0.75, 1.0, -0.5, -0.25, 1.0, -0.75, 0.75, -0.5, -0.25, 1.0, 0.25, 1.0, 0.5, 1.0, -0.5, 1.0, -0.25, 0.5, 1.0, -0.5, 0.5, -0.75, 0.0, 0.25, 0.0, -0.25, -1.0, -1.0, -0.25, -0.75, -0.5, 0.0, 0.25, -0.25, 1.0, 0.25, -0.25, 0.5, -0.5, 0.25, -0.75, -0.25, -0.5, 0.5, 1.0, -0.5, ]);
    const array1 = new Float32Array([0.0, -0.75, 1.0, -0.5, -0.75, -0.75, -1.0, -0.5, 0.0, 1.0, -0.5, 0.75, 0.0, 0.25, -0.5, -0.5, -1.0, 1.0, -1.0, -0.5, 1.0, 0.0, -0.25, -0.25, -0.25, 0.75, -1.0, -1.0, -0.75, -0.5, 0.5, -0.5, 0.0, 0.75, 0.0, -0.25, -0.5, 0.5, 0.75, -0.75, -0.25, 0.25, 0.0, -1.0, 0.5, -0.25, 0.0, 0.25, 0.5, -1.0, -0.25, 0.5, 0.25, 0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 0.0, -0.75, -1.0, -1.0, 0.5, 0.0, -0.25, 1.0, -0.25, -0.75, -0.75, -0.75, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.25, 0.75, 0.75, 0.5, -0.75, 0.75, -0.5, 0.25, 0.75, -1.0, -0.25, 0.0, -0.5, -0.25, 0.25, 1.0, 0.5, 0.25, 0.0, 0.5, 0.0, -1.0, -1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array2 = new Float32Array([-0.25, -0.25, 0.0, -0.25, -0.75, -0.75, 0.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.75, -1.0, 0.0, -0.75, 0.0, 0.5, 0.5, 1.0, 1.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, -0.25, -0.5, 0.75, -0.75, -1.0, -1.0, -0.25, -0.5, 0.25, -0.75, -0.75, -1.0, -0.75, -0.75, -0.25, 0.0, -0.5, 0.0, 0.0, -0.25, 0.25, -0.5, -0.25, 0.5, 0.0, 0.25, -0.75, -1.0, -0.5, 1.0, 0.5, 0.75, -0.75, -1.0, -0.25, -0.25, -0.5, 1.0, 0.25, -0.5, 1.0, 0.0, 0.0, 0.25, 0.25, 0.5, 0.75, 0.75, 0.25, 0.5, -1.0, 1.0, 0.25, 0.25, 0.25, 0.75, -0.25, 1.0, -1.0, 0.0, 0.0, 0.75, 0.5, -0.5, -0.25, -0.5, 0.25, 0.0, -1.0, -0.5, -0.5, 0.0, -1.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture401.destroy();
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    query400.destroy()
    device10.pushErrorScope("validation");
    query400.destroy()
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    
    
    device20.pushErrorScope("internal");
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const array3 = new Float32Array([-0.5, -0.75, 0.25, 0.75, -0.75, -0.25, 0.5, -0.75, -0.5, 0.25, 0.75, 1.0, -0.5, 0.75, 0.25, -1.0, 0.5, -0.5, -0.25, -0.25, -0.25, -0.75, 1.0, 1.0, 0.0, 0.0, -0.5, 0.0, 0.25, -0.25, -0.75, -0.75, 0.0, 1.0, -0.5, 1.0, 0.5, 0.5, -1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -1.0, 0.75, 0.75, 1.0, -0.5, -0.5, 0.5, 0.5, 0.5, -1.0, -0.75, 0.25, 0.25, -0.25, -1.0, 0.75, -0.5, -0.5, -0.5, -0.5, 0.5, -1.0, 0.75, 0.0, -0.25, 1.0, 0.0, -0.75, -0.75, -0.5, 0.75, 0.0, 1.0, 1.0, 0.5, 0.5, 0.5, 0.75, 0.25, -0.5, -0.5, -0.5, -0.25, -0.25, 0.0, -0.75, -0.25, 0.75, 1.0, 0.5, -1.0, 0.0, -0.75, 0.5, -0.5, -0.5, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    texture402.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view4032 = texture403.createView({ label: "texture_view4032" });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    device20.pushErrorScope("internal");
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    texture200.destroy();
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    texture404.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    query101.destroy()
    
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
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
    const texture_view4033 = texture403.createView({ label: "texture_view4033" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture100.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
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
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
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
    query200.destroy()
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    
    
    texture403.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query400.destroy()
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device20.destroy();
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    query100.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query401.destroy()
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
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    query400.destroy()
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.pushErrorScope("internal");
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
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
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query402.destroy()
    query401.destroy()
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    {
        await buffer4010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer4010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer4010.unmap();
        console.log(new Float32Array(data));
    }
    texture400.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline102);
    query103.destroy()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view4051 = texture405.createView({ label: "texture_view4051" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    {
        await buffer4010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer4010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer4010.unmap();
        console.log(new Float32Array(data));
    }
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.setPipeline(render_pipeline102);
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer4010, 0, array3, 0, array3.length);
    {
        await buffer4010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer4010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer4010.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer4010, 0, array2, 0, array2.length);
    
    const texture_view4052 = texture405.createView({ label: "texture_view4052" });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("validation");
    device50.destroy();
    device40.queue.writeBuffer(buffer4010, 0, array1, 0, array1.length);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    
    
    
    device40.destroy();
    render_bundle_encoder601.insertDebugMarker("marker");
    const array4 = new Float32Array([-1.0, -1.0, 0.75, 0.0, -1.0, 1.0, 0.75, -1.0, -1.0, -0.5, -0.75, -0.25, 0.75, -1.0, 0.0, -0.5, -0.75, -0.25, -0.75, -1.0, 0.0, -0.5, 1.0, -0.25, -0.25, -0.75, 0.75, 0.0, -0.25, 0.25, 0.75, 0.75, -0.75, -1.0, -0.75, -0.25, 0.5, 0.5, -0.5, -0.25, -0.75, 0.0, -0.5, 0.5, 0.5, 1.0, -0.75, 0.25, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, -0.5, 0.75, 0.75, 0.25, 0.75, 1.0, 0.0, 1.0, -1.0, -0.25, -0.75, -0.25, 0.5, -0.5, 0.5, -0.25, 0.75, 0.25, -0.5, -0.75, -1.0, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, 0.25, 0.75, 0.75, 0.0, 0.75, 0.5, -0.25, -0.75, 0.75, -1.0, -0.5, -0.75, 0.75, 0.5, -0.75, 0.75, -0.75, -0.75, -0.25, ]);
    
    
    
    
    
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    query601.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device60.pushErrorScope("internal");
    
    
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    
    
    
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    const array5 = new Float32Array([0.25, 0.5, 0.5, 1.0, -1.0, 0.0, 0.25, -0.5, 0.5, -0.25, -1.0, -1.0, 0.5, -0.25, -0.25, -0.5, -1.0, 0.5, 1.0, -0.25, 0.5, 0.5, -0.75, 0.75, -1.0, 0.5, -0.5, -0.25, 1.0, 1.0, -0.5, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, -0.25, 0.25, 0.25, -0.75, -1.0, 0.0, 0.5, 0.25, 0.5, 0.0, -0.25, 0.5, -1.0, -1.0, 0.0, 0.75, 1.0, 0.25, 0.0, -0.25, -1.0, -1.0, 0.5, 1.0, 0.0, -0.25, -1.0, -0.5, -0.75, 1.0, 0.25, -0.75, -1.0, 0.5, 0.0, -0.5, 0.5, -0.75, 0.25, -1.0, -0.25, -0.5, 0.75, 0.25, 0.5, -0.75, -0.5, -0.25, 0.75, -1.0, 0.75, 0.0, -0.75, 0.0, -1.0, 0.25, 0.0, -1.0, -1.0, 1.0, 0.25, -0.25, 0.5, ]);
    
    
    
    
    
    
    
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer605, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer605, 0, array1, 0, array1.length);
    
    
    
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    
    device60.queue.writeBuffer(buffer605, 0, array2, 0, array2.length);
    
    const array6 = new Float32Array([0.5, -0.25, 1.0, 0.0, 0.5, -1.0, -0.25, 0.0, 0.5, 0.5, -1.0, -0.25, 0.0, 0.75, -1.0, 0.75, 0.0, 0.75, -0.75, 0.75, 0.25, -0.25, 0.25, 1.0, 0.75, -0.75, -0.25, 0.5, 0.75, 0.5, -0.25, -1.0, -0.25, -0.5, 0.25, 0.75, 0.25, 0.25, 1.0, -1.0, -0.5, 0.75, -0.75, -0.25, -0.25, -0.75, 0.5, -0.5, -1.0, -0.25, 0.0, -0.25, 0.0, 0.75, -1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.75, 1.0, 0.5, -1.0, 0.75, 0.5, 0.25, 0.0, 0.0, 1.0, 0.25, 0.25, 0.0, 1.0, -0.5, -0.5, -0.5, -0.5, -0.5, 0.0, -0.75, 1.0, 1.0, 1.0, -0.25, 0.0, 0.25, -0.25, 0.25, 0.5, 0.5, -0.75, 0.25, -0.75, 0.25, 0.25, -0.75, 0.0, 0.0, 0.5, ]);
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    render_bundle_encoder600.setPipeline(render_pipeline600);
    render_bundle_encoder602.setPipeline(render_pipeline601);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    render_bundle_encoder602.insertDebugMarker("marker");
    
    query601.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    render_bundle_encoder601.setPipeline(render_pipeline601);
    const texture_view6003 = texture600.createView({ label: "texture_view6003" });
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group601);
    query600.destroy()
    device60.queue.writeBuffer(buffer605, 0, array4, 0, array4.length);
    
    device60.queue.writeBuffer(buffer605, 0, array3, 0, array3.length);
    render_bundle_encoder600.setVertexBuffer(0, buffer602);
    
    render_bundle_encoder600.drawIndirect(buffer604, 0);
    
    
    const array7 = new Float32Array([0.0, -0.5, 0.25, 0.25, 0.5, 0.75, 0.0, -0.75, 0.0, 0.25, 0.5, -0.5, 0.5, -0.25, 0.75, -0.75, 0.5, 0.5, -0.75, 0.25, -1.0, 0.5, -0.75, -0.75, 0.25, 0.25, 0.0, 0.75, -0.25, 0.5, 0.5, 1.0, -0.5, -0.25, -0.25, -0.25, 0.0, 1.0, 0.0, 0.75, 0.25, 0.5, 0.0, 0.75, -0.5, -0.75, 1.0, 0.5, 1.0, -0.5, -0.25, -0.5, 1.0, 0.5, -0.5, 0.25, -1.0, 0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 0.25, 0.75, 0.0, 0.0, 0.25, -0.5, -0.5, -0.5, 0.0, -1.0, 0.25, 0.5, -0.5, 0.0, 0.25, -0.75, 0.5, -0.5, -1.0, -0.5, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, -0.25, 0.25, -0.5, -0.5, 1.0, -1.0, 0.75, -1.0, 1.0, -0.75, 0.5, ]);
    device60.queue.writeBuffer(buffer605, 0, array0, 0, array0.length);
    device60.destroy();
    
    
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
    device70.destroy();
    
}