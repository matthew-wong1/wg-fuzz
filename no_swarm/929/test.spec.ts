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
    const array0 = new Float32Array([-0.5, -0.5, 0.5, -0.25, -0.25, -0.5, 0.0, 0.25, 0.5, -1.0, -0.75, -0.75, -0.5, 0.5, -0.5, 1.0, -0.25, 0.75, -0.5, 0.5, -0.5, 0.75, -0.5, -0.5, -0.75, 0.25, 0.25, 0.75, -1.0, -0.25, 0.5, 0.0, 0.0, -0.75, -0.5, 0.25, 0.25, 0.25, -0.5, 0.25, 0.0, 0.25, 0.25, -0.25, 0.75, -1.0, 0.75, 0.25, 0.0, 1.0, 0.0, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, 0.25, -1.0, 0.75, 0.25, 0.5, 1.0, 0.0, -0.5, -0.5, 1.0, -0.75, -0.5, 0.0, 0.25, 0.5, -1.0, 1.0, 0.0, -0.75, -1.0, 0.0, 0.5, -0.75, -0.25, 0.75, 1.0, -1.0, 0.5, 0.75, 0.5, 0.75, 0.75, -0.25, -0.25, 0.75, 0.25, 0.25, -0.75, -1.0, 0.5, -0.5, -0.75, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
        powerPreference: "low-power"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    device10.destroy();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([-0.5, 1.0, 0.75, -0.5, -0.25, 0.0, 0.75, 0.0, -1.0, 0.75, 0.0, -1.0, 1.0, 1.0, 0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.5, -1.0, 0.0, 0.75, -0.25, 0.5, 0.75, 0.5, 0.0, -0.25, -0.5, 0.25, -0.5, 0.75, 1.0, 1.0, 0.25, -1.0, 0.0, 0.0, 0.25, -0.5, 0.25, 1.0, 0.75, 1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.75, -1.0, -0.5, 0.25, 0.75, -0.75, 0.5, -1.0, -0.5, -1.0, -0.25, -0.5, 0.5, 0.25, -0.25, 1.0, 1.0, -0.25, 0.0, -1.0, 1.0, -0.25, 0.0, -0.75, 0.75, 0.0, 1.0, 1.0, 0.75, -0.25, 1.0, -1.0, 0.5, 0.25, 0.75, 0.25, 1.0, -0.25, 1.0, 0.25, 0.5, 1.0, 0.5, 1.0, 0.25, -1.0, 0.75, 0.75, -0.5, ]);
    texture400.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([-0.25, 1.0, -1.0, 0.25, 0.0, 1.0, 0.0, -0.25, 0.5, 0.5, -1.0, 0.75, 0.75, 1.0, 0.75, -0.75, -0.75, -1.0, 0.75, -0.5, -1.0, 0.25, -0.25, 1.0, -0.75, -1.0, -0.75, -1.0, 0.25, 0.75, -0.25, 0.25, -0.75, 0.5, 0.25, 0.0, -1.0, 0.75, -0.5, 0.0, 0.75, -0.25, -0.75, 0.0, -1.0, -0.25, 1.0, 0.75, 0.5, -1.0, -0.5, -0.5, -0.5, 1.0, 0.0, 0.25, 0.0, -0.75, 0.75, 0.5, 1.0, -1.0, -0.5, 1.0, -0.75, 1.0, -1.0, -0.5, -1.0, -0.25, -0.5, -0.25, 0.5, -1.0, -1.0, 0.0, 0.0, 0.0, -0.25, 0.0, 0.5, 0.0, -1.0, -0.5, 1.0, 0.25, 0.75, 0.5, 0.25, -1.0, -1.0, 0.25, 0.75, 0.75, -1.0, 0.75, 1.0, 0.0, -0.75, 0.5, ]);
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device40.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array3 = new Float32Array([-0.5, -1.0, -0.75, -0.25, 1.0, -0.5, 0.25, 0.0, -0.25, 0.5, 1.0, 1.0, 0.0, 0.0, 0.5, 0.0, -0.5, -1.0, -0.25, 1.0, -0.25, 0.25, -1.0, -1.0, 1.0, 0.0, -0.5, 0.5, -0.5, 0.5, 0.25, 1.0, 0.25, 0.0, 0.5, -0.5, -0.5, 0.25, -1.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.75, -0.75, 0.5, 0.25, 0.75, -0.5, 1.0, -0.25, -0.25, 0.25, 1.0, 1.0, 0.5, 0.25, 0.25, -0.25, 0.75, 0.75, 0.25, 0.25, 1.0, -1.0, 0.0, -0.5, -0.5, 0.0, -0.5, 0.0, 0.0, -1.0, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.25, 1.0, 0.0, -0.75, -0.25, 0.0, 0.75, -0.75, 1.0, 1.0, 1.0, 0.75, -0.5, 0.75, 1.0, -1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    device60.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    buffer201.destroy()
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    texture200.destroy();
    
    
    device70.pushErrorScope("internal");
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    query200.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder200.insertDebugMarker("marker");
    {
        await buffer701.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer701.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer701.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    
    device20.pushErrorScope("validation");
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
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
    const command_buffer700 = command_encoder700.finish();
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
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
    
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query201.destroy()
    
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer700.destroy()
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    buffer702.destroy()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const array4 = new Float32Array([-0.5, -0.25, 0.75, 0.5, 0.75, 0.25, -1.0, -1.0, -0.75, -0.25, 0.0, 0.0, 0.25, 0.5, 0.0, -0.75, 1.0, 0.5, 0.25, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, 0.75, -0.5, 0.75, 1.0, -0.75, 0.25, -0.5, -0.75, 1.0, 0.75, -0.75, 0.0, -1.0, 0.5, -0.25, 0.25, -0.75, 0.0, 0.0, 0.75, 0.75, -0.75, -1.0, 0.25, 0.5, 0.0, -0.25, 0.75, -0.25, -0.5, 1.0, 0.0, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, -0.25, -0.75, -1.0, -1.0, 0.25, -0.5, -0.25, 0.5, -1.0, 1.0, 0.5, 0.0, 0.75, 0.25, 1.0, 1.0, 1.0, 0.75, 0.75, 0.0, 0.75, -0.25, -0.25, -0.5, -1.0, -1.0, 0.25, 0.0, 0.0, -0.75, 0.5, -0.25, -0.25, -0.5, -0.5, ]);
    
    const array5 = new Float32Array([1.0, 0.75, 0.5, 0.25, 0.25, 1.0, 0.5, -0.75, 0.5, -0.25, 0.5, 0.75, -1.0, 0.0, 0.75, 0.25, -1.0, -1.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.25, 0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -0.25, 0.0, -0.5, -0.5, -0.75, 1.0, -0.75, 0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.0, 0.25, 0.0, 1.0, 1.0, -0.5, -0.75, 0.75, 1.0, 1.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.5, -0.5, 0.75, 0.0, 0.75, -0.75, 1.0, 0.5, 1.0, 0.75, 0.25, 0.0, -0.5, -0.25, -0.25, 1.0, -0.5, 0.25, -0.5, -0.75, -0.25, 0.5, -0.5, -1.0, 0.75, -0.5, 0.0, 0.25, 0.75, 0.5, -0.75, 0.75, -0.75, 1.0, 0.5, 0.0, -0.25, 1.0, ]);
    device70.pushErrorScope("validation");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device70.popErrorScope().then((error) => {
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    device70.queue.submit([command_buffer700, ]);
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    buffer204.destroy()
    
    
    {
        await buffer701.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer701.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer701.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder700.popDebugGroup();
    
    device20.queue.submit([command_buffer200, ]);
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder702.setPipeline(render_pipeline700);
    texture201.destroy();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder701.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    
    device70.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query200.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    texture202.destroy();
    query200.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    device20.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const array6 = new Float32Array([0.75, -0.5, 0.5, -0.5, 0.5, -0.25, -0.75, -0.75, -1.0, 1.0, -0.75, 0.5, 1.0, 0.0, -0.25, -1.0, -0.75, 1.0, 0.5, -0.5, 0.25, 0.0, 1.0, -0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -0.75, 1.0, -0.5, -1.0, 1.0, -0.25, -1.0, 0.75, -0.5, -0.5, 0.5, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 0.75, 0.25, 0.25, 0.75, 0.25, 0.5, 0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 1.0, -1.0, -1.0, 0.25, -0.25, -0.75, 0.5, -0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 0.75, 0.0, 0.0, -0.75, -0.75, 0.5, 1.0, -1.0, 0.25, 0.75, -0.25, 0.5, 0.25, 1.0, 1.0, 1.0, -0.25, -0.5, -0.25, -0.25, 0.0, -0.5, -0.75, -0.25, 0.5, 1.0, -0.25, -1.0, -0.75, ]);
    const command_buffer800 = command_encoder800.finish();
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    query800.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    device80.pushErrorScope("internal");
    
    query800.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    render_bundle_encoder800.popDebugGroup();
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    query800.destroy()
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    
    device90.pushErrorScope("internal");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    buffer800.destroy()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    
    
    const array7 = new Float32Array([-1.0, 0.5, 0.25, -0.5, 0.75, -1.0, -1.0, -0.5, -0.75, 0.25, 0.5, -0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -1.0, 0.25, 0.75, -1.0, 0.5, -1.0, 0.25, -0.75, -0.5, -0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -0.25, 1.0, -0.75, -1.0, 0.5, -0.25, -0.5, 1.0, -1.0, 0.5, -0.5, 0.0, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, -0.25, 1.0, -0.75, -1.0, -0.5, 0.25, 0.0, -0.5, 1.0, 0.5, 1.0, 0.25, -0.75, 1.0, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, -0.5, 0.5, -0.5, 0.0, 0.25, -0.75, 0.0, -0.5, -1.0, -1.0, 0.0, 0.25, 0.75, 0.25, 0.5, 0.25, 0.25, 0.5, 0.5, -0.75, -0.5, 0.25, -1.0, -0.75, -0.75, 0.0, 0.75, 0.25, 0.25, 1.0, ]);
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device100.pushErrorScope("validation");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    query800.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    command_encoder900.copyBufferToTexture(
        {
            buffer: buffer900
        },
        {
            texture: texture900
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
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
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
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
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
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
    
    texture800.destroy();
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
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder900.insertDebugMarker("marker");
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture900 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1000.setPipeline(render_pipeline1000);
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout802]
    });
    
    buffer1000.destroy()
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
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
    
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    
    
    command_encoder901.pushDebugGroup("mygroupmarker")
    
    const command_buffer900 = command_encoder900.finish();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder901.insertDebugMarker("marker");
    
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    texture900.destroy();
    buffer901.destroy()
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query800.destroy()
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
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    
    const command_buffer902 = command_encoder902.finish();
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    buffer900.destroy()
    
    render_bundle_encoder1001.setPipeline(render_pipeline1001);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
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
    const array8 = new Float32Array([1.0, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, 0.5, 0.5, 1.0, 0.5, 1.0, 0.5, -1.0, -0.25, -1.0, 0.25, -0.5, 0.25, -1.0, -0.25, 0.25, -1.0, 0.0, 0.0, 0.0, 0.75, -0.25, 0.5, -0.25, 0.25, -0.25, -0.25, 1.0, 0.25, 0.75, 1.0, 0.25, 0.0, 0.5, 0.25, 0.0, 0.25, -0.75, -0.75, 0.75, 0.0, -0.75, 1.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.0, -1.0, -0.5, 1.0, 0.25, 0.0, 0.75, 0.5, -1.0, -0.5, 0.0, -0.5, 0.25, 0.25, -0.5, 0.25, 0.25, 0.0, -0.5, 1.0, 0.5, -0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 0.75, 0.0, 0.0, -0.75, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, -0.75, -1.0, -0.5, 0.5, -0.5, -1.0, 0.75, 0.5, 1.0, ]);
    
    
    render_bundle_encoder902.insertDebugMarker("marker");
    command_encoder901.popDebugGroup()
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout901,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    
    
    const command_buffer901 = command_encoder901.finish();
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    device80.pushErrorScope("validation");
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    
    query801.destroy()
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
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
    command_encoder801.insertDebugMarker("mymarker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout802,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    render_bundle_encoder800.setPipeline(render_pipeline801);
    command_encoder1001.pushDebugGroup("mygroupmarker")
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([0.0, 0.25, 0.25, 0.0, 0.75, 0.0, 0.75, -0.75, -0.5, -0.25, 0.0, 1.0, 0.5, -0.25, -1.0, -0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 1.0, 0.25, 0.25, 0.0, 0.5, -0.25, 0.75, 0.0, 0.25, 0.0, 0.25, 0.25, 0.0, 1.0, -0.5, 0.75, 0.0, 0.5, 1.0, 0.75, 1.0, 0.75, 0.5, 0.75, 1.0, -0.75, -0.5, -0.75, -0.75, 0.5, 0.25, -0.5, 0.5, 0.75, 0.5, 0.25, -1.0, -0.5, 0.25, -0.5, -0.75, 0.25, -0.25, -1.0, 0.75, -1.0, -0.25, 0.75, -0.75, 0.75, 0.75, 1.0, 1.0, -0.25, -0.5, 1.0, -1.0, 0.5, 0.0, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, -0.5, 0.0, 0.5, 1.0, -0.25, -0.25, 0.25, 0.75, 0.25, -0.75, 1.0, 0.75, 1.0, -0.25, ]);
    const render_pipeline1002 = device100.createRenderPipeline({
        label: "render_pipeline1002",
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
    
    
    device100.pushErrorScope("validation");
    query801.destroy()
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
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
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    command_encoder1001.insertDebugMarker("mymarker");
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    device100.queue.writeTexture({ texture: texture1001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture1000.destroy();
    query801.destroy()
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1001]
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const command_buffer802 = command_encoder802.finish();
    
    const compute_pipeline901 = device90.createComputePipeline({
        label: "compute_pipeline901",
        layout: pipeline_layout900,
        compute: {
            module: shader_module900,
            entryPoint: "main"
        }
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout900]
    });
    compute_pass_encoder8010.setPipeline(compute_pipeline800);
    const array10 = new Float32Array([-1.0, -0.25, 0.25, 0.5, -0.75, 0.5, -0.5, -0.25, 0.75, 0.0, 0.75, 0.5, -0.25, 0.0, -0.75, 0.0, -1.0, 0.75, 1.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.25, -1.0, -0.25, 0.5, 0.25, -0.75, -0.25, 0.0, -0.25, -1.0, 0.0, -1.0, -0.25, -0.25, 0.5, -0.75, 0.25, 0.75, 0.0, 0.25, 0.5, 1.0, -0.25, 0.25, 0.5, 0.25, 0.25, 0.25, -0.5, -0.5, 0.5, 0.25, -0.75, 0.5, -0.25, 0.75, -0.5, -1.0, 0.25, -0.75, 1.0, 0.0, 1.0, 0.75, 0.5, -0.5, 0.5, -0.5, 0.75, 0.25, -0.5, 1.0, 0.25, -0.75, 0.5, 0.25, 0.25, -0.25, 0.25, 0.25, 0.25, 0.0, 1.0, -0.5, -0.25, 0.75, 0.0, 0.5, 0.75, -0.25, -0.25, -1.0, -0.5, ]);
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: render_pipeline1001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1003,
                },
            },
        ],
    });

    render_bundle_encoder1001.setBindGroup(0, bind_group1000);
    buffer1001.destroy()
    device100.queue.writeTexture({ texture: texture1001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder10000.insertDebugMarker("marker")
    
    device100.queue.writeTexture({ texture: texture1001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder800.popDebugGroup();
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const compute_pass_encoder10020 = command_encoder1002.beginComputePass({ label: "compute_pass_encoder10020" });
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
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const render_pipeline1003 = device100.createRenderPipeline({
        label: "render_pipeline1003",
        vertex: {
            module: shader_module1004,
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
            module: shader_module1004,
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
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout803]
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
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline801.getBindGroupLayout(0),
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

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device100.queue.writeTexture({ texture: texture1001 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1001.insertDebugMarker("marker");
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
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
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    device90.queue.submit([command_buffer900, command_buffer901, command_buffer902, ]);
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
        
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: compute_pipeline800.getBindGroupLayout(0),
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

    compute_pass_encoder8010.setBindGroup(0, bind_group801);
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer807, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer807, 0);
    const command_buffer903 = command_encoder903.finish();
    command_encoder1001.popDebugGroup()
    const command_buffer1001 = command_encoder1001.finish();
    device80.queue.submit([command_buffer802, ]);
    device90.queue.submit([command_buffer903, ]);
    device80.queue.submit([command_buffer800, ]);
    device100.queue.submit([command_buffer1001, ]);
    compute_pass_encoder8010.end();
    const command_buffer801 = command_encoder801.finish();
    device80.queue.submit([command_buffer801, ]);
}