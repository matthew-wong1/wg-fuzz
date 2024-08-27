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
    
    const array0 = new Float32Array([-0.25, 0.5, -0.25, -1.0, 0.5, 0.25, -1.0, 0.0, -0.75, -0.75, 0.75, -0.5, -0.75, 0.0, 0.75, -0.5, 0.5, 0.0, 0.5, 0.5, -0.25, -0.5, -0.5, 1.0, -0.75, -0.75, 0.5, 0.25, 0.5, 0.25, -1.0, 1.0, 0.75, 0.5, -1.0, -1.0, 0.5, -0.75, -0.25, 0.75, 0.25, -0.25, -0.5, 0.5, -0.25, -0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 1.0, -0.25, 0.0, 0.75, 1.0, 0.5, 0.5, 0.75, -1.0, -0.25, 0.75, 0.5, -0.25, 0.0, 1.0, 0.75, 1.0, 0.75, -0.25, -0.75, -0.5, 0.0, 0.25, -0.75, -1.0, 1.0, 0.25, 0.75, 0.0, -1.0, 0.5, 1.0, -0.75, 0.5, 0.25, -0.25, 0.0, 0.0, -0.75, 0.0, -0.75, 0.75, 0.75, -0.5, -1.0, 0.5, -1.0, -0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-0.5, 0.75, 0.0, 1.0, 0.75, 1.0, -0.5, -1.0, 0.5, -1.0, -0.75, 0.75, 0.25, -0.25, 0.25, 1.0, 0.25, -0.75, 0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.75, 0.25, 0.75, -0.25, -0.75, 1.0, -0.75, 0.5, 0.25, 0.0, -0.75, -0.25, 1.0, 0.0, -0.5, 0.25, 0.75, 0.75, 1.0, 0.5, 0.0, -0.25, 0.75, -1.0, -1.0, 1.0, -0.75, 0.0, -1.0, 0.5, -0.5, -0.75, 0.5, 0.5, -0.5, 0.75, 0.5, -0.75, 0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.0, -0.25, 0.5, -1.0, 0.25, -0.25, 0.0, -0.75, -0.5, -0.75, 0.5, 0.0, 0.0, -1.0, 0.25, 0.5, 0.75, -0.5, 0.75, 1.0, -0.25, 0.5, -0.25, 0.75, 1.0, 0.75, -1.0, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array2 = new Float32Array([-1.0, -0.5, 0.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.75, 0.0, 0.5, -0.75, -0.25, 1.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.5, 0.75, 0.25, 0.75, -1.0, -0.75, -0.25, 0.5, 0.0, -0.25, -0.25, 0.5, -0.75, 0.5, -0.25, 0.25, 0.0, 0.25, 0.75, 1.0, -1.0, 0.25, 1.0, 0.75, -1.0, 0.25, -0.75, 0.0, -1.0, -0.25, -0.75, -0.25, -0.5, 0.5, 0.5, 0.25, -0.75, 1.0, 0.0, -0.25, -1.0, 1.0, -0.75, -0.75, 0.5, 0.0, 0.75, 0.25, 0.5, -0.25, 0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -1.0, 0.25, 0.0, 1.0, -0.75, 0.75, 0.5, 0.25, 0.0, 0.25, 0.75, 0.0, -1.0, 0.25, -0.75, 0.75, -0.5, -1.0, -0.75, -0.25, 0.5, 0.5, 0.75, -0.5, 0.5, ]);
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.25, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, -0.25, 1.0, -0.75, 0.5, 0.0, 0.25, -0.5, 0.75, -0.5, -0.25, -1.0, -1.0, 0.25, 0.5, -1.0, -0.75, -1.0, -0.5, 1.0, -1.0, 0.0, 0.75, -0.75, 0.5, 0.25, -0.75, 0.75, 1.0, 0.75, 0.0, 0.75, 0.5, -0.25, -0.25, 0.75, 0.5, -0.75, 1.0, 0.5, -0.5, 0.5, 0.5, 0.5, 1.0, 0.75, -1.0, 0.5, 0.25, 0.0, -0.5, 0.5, 1.0, 0.25, -0.25, -0.5, -0.25, -0.5, 0.25, 0.0, -1.0, 0.25, -0.75, 0.5, 0.5, 0.75, -1.0, -0.25, -0.5, -0.75, -0.25, 0.75, 0.75, 0.0, 0.25, 0.25, -0.75, 0.5, -0.5, 0.75, 0.5, 1.0, -0.5, 1.0, -0.75, -0.75, -0.75, -0.5, 1.0, 0.25, 0.0, 0.5, -0.25, -0.5, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    device00.pushErrorScope("internal");
    query002.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer000.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder001.insertDebugMarker("mymarker");
    
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
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
    query000.destroy()
    
    
    query002.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query003.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_buffer001 = command_encoder001.finish();
    
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([0.25, 0.5, -0.5, -0.75, -0.75, -0.25, -1.0, -0.25, -0.75, -0.5, -0.75, 0.5, -0.25, -0.5, 0.75, 0.25, 0.75, 1.0, 1.0, 0.75, -0.75, -0.25, 0.75, 0.5, -0.25, -0.75, -1.0, -1.0, -0.75, 1.0, 1.0, 0.25, 0.25, -0.75, -0.5, 0.5, -0.25, -0.5, -1.0, 0.5, -0.5, -1.0, -0.25, -0.5, 0.25, 0.0, 0.0, -0.75, 0.25, -1.0, -1.0, -0.25, 0.0, 0.25, 0.25, -0.5, -1.0, -0.5, -0.75, 1.0, 0.75, 0.75, -0.25, -1.0, -0.5, 0.5, 0.0, -0.25, 0.5, 0.5, 0.25, 1.0, 0.5, 1.0, -0.75, 0.0, -0.25, 1.0, 0.5, -0.75, 0.75, 0.75, -0.5, 0.0, 0.5, 0.75, -0.25, 0.0, -0.25, -1.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.0, 0.25, -1.0, 0.75, 0.5, ]);
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder000.popDebugGroup();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.popDebugGroup();
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer002 = command_encoder002.finish();
    texture000.destroy();
    query001.destroy()
    query002.destroy()
    device00.queue.submit([command_buffer002, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    const array5 = new Float32Array([0.75, -0.5, -0.25, 0.5, 1.0, 1.0, 0.0, 0.75, 0.75, 0.0, 0.5, -0.75, -0.75, -0.5, 0.0, 0.0, -0.75, -0.75, 0.5, 0.5, 1.0, -1.0, 0.0, -0.75, 0.5, 0.25, -1.0, 0.5, 1.0, 0.75, 1.0, 1.0, -0.75, 0.5, -1.0, 0.75, 0.5, 1.0, -1.0, 0.0, -0.75, 0.75, 0.5, -1.0, -0.25, 0.0, -0.25, 1.0, -0.75, -1.0, -1.0, 1.0, -0.75, -0.75, 0.0, 0.5, 0.5, -1.0, 1.0, -1.0, 0.5, -0.5, 0.0, -0.5, 0.5, -0.75, -0.5, -0.5, -0.75, -0.25, -1.0, -0.5, -1.0, 0.0, -0.75, -0.5, 0.5, -0.75, -0.75, -0.75, 0.25, 0.5, 0.0, -1.0, 1.0, 0.75, 0.75, 1.0, 1.0, -0.5, -1.0, 0.0, 0.75, 0.25, 0.5, -1.0, -0.25, -0.25, 0.5, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    render_bundle_encoder002.insertDebugMarker("marker");
    
    query001.destroy()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    query200.destroy()
    query002.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer001.destroy()
    
    
    device10.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.destroy();
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.submit([]);
    
    
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const array6 = new Float32Array([0.25, 0.25, 1.0, 0.5, 0.5, -0.5, -1.0, -0.75, 0.75, 0.25, -0.75, 0.0, -1.0, 1.0, -0.25, -0.5, -0.75, 0.0, -0.25, -0.75, 0.75, -0.75, -0.5, 1.0, 0.75, 0.0, 0.25, -0.5, 0.25, 0.75, 0.0, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 0.0, -1.0, -0.75, 0.75, 0.75, 0.25, -1.0, -0.5, -0.25, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, -0.75, -0.5, -1.0, -0.75, -0.75, -0.5, -0.25, -1.0, -0.25, 0.5, -1.0, 1.0, 0.5, 0.75, -1.0, 1.0, -0.5, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, -1.0, -1.0, 0.25, 0.5, 0.0, 0.75, 0.75, 0.75, -0.5, 1.0, 0.75, 1.0, -0.25, -0.25, 0.75, 0.25, -0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 0.5, -0.5, 1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    query201.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    texture202.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_bundle_encoder200.setPipeline(render_pipeline202);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer202.destroy()
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    query201.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    
    buffer200.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    query202.destroy()
    
    buffer203.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    buffer205.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    buffer206.destroy()
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer201.destroy()
    
    buffer204.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer205);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    buffer207.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query204.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    render_bundle_encoder200.setIndexBuffer(buffer208, "uint16");
    query204.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer205,
        0
    )
    const array7 = new Float32Array([0.5, 0.75, -0.75, 0.5, -0.5, 0.25, 0.25, -0.75, 0.5, 0.0, 0.25, 0.0, 0.25, 0.5, 0.75, -0.75, 0.0, 0.0, 0.75, 1.0, 0.0, 0.5, -0.25, -1.0, 0.25, -0.5, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, 0.0, -1.0, -0.5, 1.0, 0.5, 0.75, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.0, -0.5, -0.25, 0.5, -0.5, -0.5, 1.0, 0.0, -1.0, 1.0, 0.25, -1.0, 0.5, 0.25, 0.5, -0.75, 0.75, 1.0, 0.5, -0.75, 0.0, 0.25, -0.75, -0.5, 0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.5, 0.0, -1.0, 0.5, 0.25, 0.5, 0.25, -0.75, 0.0, -0.75, 0.5, -1.0, 0.25, 1.0, 0.5, 1.0, -0.75, 0.75, 1.0, 0.0, -1.0, 0.75, -1.0, -0.5, ]);
    
    query202.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.setVertexBuffer(0, buffer202);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder200.popDebugGroup();
    
    
    
    device20.queue.writeBuffer(buffer208, 0, array7, 0, array7.length);
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder202.setIndexBuffer(buffer208, "uint16");
    
    render_bundle_encoder202.drawIndirect(buffer203, 0);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_pass_encoder2001.setPipeline(render_pipeline203);
    
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder2000.setPipeline(render_pipeline203);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    
    
    
    texture200.destroy();
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2001.insertDebugMarker("marker");
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array8 = new Float32Array([-1.0, 0.5, 1.0, 0.5, -0.25, 0.75, 0.75, -0.5, 0.25, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, -0.5, 0.0, 0.5, -1.0, -1.0, 0.0, -1.0, -0.5, -0.25, 1.0, -1.0, 0.5, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, -1.0, -0.75, 1.0, 0.5, 0.0, 0.25, 1.0, 0.25, -0.5, 1.0, 0.5, -0.25, 0.75, -0.75, -0.5, 1.0, 1.0, 1.0, 1.0, 0.25, 0.75, -0.5, -0.5, -0.25, 0.5, -0.75, -0.25, 0.25, 0.5, 0.5, -0.25, 1.0, -0.25, -1.0, 0.75, 0.75, 0.5, -0.25, 1.0, 0.0, -1.0, 1.0, -0.5, -0.75, 1.0, -0.75, -0.5, 0.25, -0.75, -1.0, 0.0, 0.75, 0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 0.5, -1.0, -1.0, 0.0, 1.0, -0.75, 0.0, -0.5, 0.25, ]);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setVertexBuffer(0, buffer203);
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer207,
        0
    )
    query202.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.setIndexBuffer(buffer2010, "uint16");
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer2010,
        0
    )
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query205.destroy()
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    buffer202.destroy()
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.drawIndirect(buffer208, 0);
    render_bundle_encoder202.insertDebugMarker("marker");
    query200.destroy()
    
    render_pass_encoder2001.setStencilReference(1);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group204);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    query200.destroy()
    buffer208.destroy()
    buffer2010.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2001.setVertexBuffer(0, buffer2013);
    render_pass_encoder2010.beginOcclusionQuery(1)
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.setIndexBuffer(buffer2010, "uint16");
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setStencilReference(1);
    query206.destroy()
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2001.setStencilReference(1);
    device20.queue.writeBuffer(buffer2012, 0, array0, 0, array0.length);
    
    render_pass_encoder2001.draw(3);
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer200,
        0
    )
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.finish();
    query205.destroy()
    render_pass_encoder2011.setPipeline(render_pipeline206);
    
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group205);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer2011.destroy()
    query205.destroy()
    render_pass_encoder2010.setStencilReference(1);
    texture201.destroy();
    render_bundle_encoder201.draw(3);
    
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeBuffer(buffer2013, 0, array8, 0, array8.length);
    buffer209.destroy()
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    
    render_pass_encoder2011.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    query201.destroy()
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer208.destroy()
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2010.pushDebugGroup("group_marker");
    buffer2014.destroy()
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    query202.destroy()
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2000.beginOcclusionQuery(0)
    buffer2012.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const array9 = new Float32Array([-0.75, 0.75, -0.75, 0.5, 0.25, -0.25, -1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 0.75, -0.25, 0.25, -0.75, -1.0, 0.75, 1.0, 0.5, -0.25, 1.0, -1.0, -1.0, 0.0, 1.0, 0.25, -1.0, -0.25, -0.25, 0.5, -0.5, -0.75, 0.5, -1.0, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.25, -0.5, 0.75, 0.75, 0.5, 0.25, -1.0, -0.5, 0.0, 1.0, -0.25, -0.25, -0.5, -0.5, -0.5, 0.5, 0.75, -1.0, 0.25, 0.75, 0.25, -0.75, 0.25, 0.0, 1.0, -0.5, 0.25, 1.0, -0.25, 0.75, -0.25, -1.0, 0.25, -1.0, 0.75, -0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 0.75, -0.5, 0.25, -1.0, 1.0, -0.75, -0.75, 0.0, -1.0, 0.5, 0.0, -0.75, -0.5, -0.5, 0.25, 0.25, 1.0, ]);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setVertexBuffer(0, buffer203);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query207
    });
    render_pass_encoder2011.pushDebugGroup("group_marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2020.setPipeline(render_pipeline202);
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer207,
        0
    )
    
    
    query204.destroy()
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.endOcclusionQuery()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query202.destroy()
    render_pass_encoder2011.insertDebugMarker("marker");
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query208
    });
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    query205.destroy()
    buffer2014.destroy()
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_pass_encoder2000.setStencilReference(1);
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.endOcclusionQuery()
    device30.destroy();
    render_pass_encoder2021.setPipeline(render_pipeline202);
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer2015.destroy()
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder200.drawIndexedIndirect(buffer206, 0);
    render_bundle_encoder202.setIndexBuffer(buffer209, "uint16");
    
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.draw(3);
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_pass_encoder2000.end();
    query201.destroy()
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.draw(3);
    render_bundle_encoder202.finish();
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query204.destroy()
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.drawIndexed(3);
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group206);
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer2015,
        0
    )
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group207);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.setVertexBuffer(0, buffer2015);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group208);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.setVertexBuffer(0, buffer207);
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.setVertexBuffer(0, buffer203);
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder2020.end();
    render_pass_encoder2021.end();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2001.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2018, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer202, ]);
}