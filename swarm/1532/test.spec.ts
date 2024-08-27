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
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_buffer200 = command_encoder200.finish();
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array0 = new Float32Array([-0.5, -0.25, -1.0, 0.5, -0.75, -0.75, -0.75, 0.0, 0.0, -0.75, 0.75, 0.75, -0.75, -0.75, -0.75, -0.75, 0.75, 0.5, -0.5, 0.5, -0.5, -0.75, -0.5, 0.75, -0.5, 1.0, 0.75, 0.75, 0.75, -1.0, -1.0, 1.0, -1.0, 0.5, -0.5, -1.0, 0.25, 0.75, -0.75, 0.0, -0.25, 0.5, 1.0, 0.75, -1.0, 0.0, 0.0, -0.5, 0.25, 0.75, -1.0, 0.5, 0.75, 0.0, -1.0, -0.75, -1.0, 0.75, -0.75, -0.5, -0.5, 0.75, 0.0, 0.25, -0.5, 0.75, 1.0, -1.0, -0.25, 1.0, 1.0, 0.5, 1.0, -0.25, 0.0, 0.5, -1.0, 1.0, 0.25, -0.25, -0.75, 0.75, 0.75, -1.0, 0.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.25, -1.0, 0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 0.75, 0.0, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_buffer000 = command_encoder000.finish();
    
    device10.queue.submit([]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    command_encoder001.insertDebugMarker("mymarker");
    device40.destroy();
    device00.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1001.popDebugGroup()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    compute_pass_encoder1000.popDebugGroup()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder001.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.submit([command_buffer200, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array1 = new Float32Array([0.25, -0.75, -0.5, 0.0, -1.0, -0.75, -0.75, -0.25, 0.0, -1.0, 1.0, 0.0, 0.75, 0.75, 1.0, -0.5, 0.25, 0.75, -0.25, -0.25, 1.0, 1.0, 0.25, 0.5, 1.0, 1.0, -0.75, 0.75, -0.5, -0.75, 1.0, 1.0, -0.5, 0.5, 1.0, 0.5, -1.0, 0.25, -0.25, 0.25, 0.75, 1.0, 0.25, 0.75, 0.5, 0.25, -1.0, 0.75, 1.0, 0.25, 0.75, 1.0, 0.5, 1.0, 0.5, 1.0, -0.75, -0.5, 1.0, -0.75, -0.25, 0.0, 0.75, -0.25, 0.75, 1.0, 0.25, 0.25, 1.0, 0.5, 0.75, -1.0, 0.75, 0.75, -1.0, 0.0, 0.0, 0.25, 0.75, 1.0, 0.5, -0.75, 0.0, -0.25, 0.25, 0.25, -0.25, -0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -0.75, -0.5, -0.25, 0.0, 0.25, -1.0, -0.5, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    
    texture200.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array2 = new Float32Array([1.0, 1.0, 0.5, 0.25, -1.0, -0.5, -1.0, 0.5, 0.75, 0.0, 0.0, -1.0, 0.25, 0.0, 0.0, 0.25, -1.0, 0.25, 1.0, -0.75, 0.75, 1.0, 0.0, -0.25, 0.25, 0.5, -0.5, -0.5, 0.0, -0.75, -0.75, -0.75, -0.5, 0.25, 0.0, 0.5, 0.25, 1.0, -1.0, -0.25, 1.0, 0.5, 0.5, 0.75, -1.0, -0.5, -1.0, -1.0, 0.75, -1.0, 0.0, -0.25, -0.25, -0.5, 0.5, -0.5, -0.25, 0.5, 0.5, 1.0, -0.25, 0.25, 0.25, 0.5, -0.25, 0.25, 0.25, -0.75, 1.0, 1.0, 0.25, 0.0, -0.25, 0.5, -0.5, 1.0, -1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.75, -0.75, 1.0, -0.25, -0.5, -0.75, -1.0, -0.75, -0.75, 1.0, 0.5, 0.0, -0.75, -0.75, -1.0, -1.0, -1.0, 0.5, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    buffer500.destroy()
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
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
    device20.pushErrorScope("validation");
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer201 = command_encoder201.finish();
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    device20.queue.submit([command_buffer201, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    command_encoder500.insertDebugMarker("mymarker");
    device10.pushErrorScope("internal");
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([0.25, -0.25, -0.5, 1.0, -1.0, -0.75, -0.5, 1.0, 0.5, -0.5, 0.0, 0.0, 0.75, -0.5, 0.5, 0.5, 0.75, 0.25, 0.25, 0.0, 0.25, 0.25, 0.75, -0.75, 0.25, 0.0, 0.75, 0.25, 1.0, 1.0, -0.5, -0.25, -1.0, -1.0, 0.75, 0.25, -1.0, 0.5, 0.25, 0.5, 0.5, 0.75, 0.0, 0.75, 0.25, 1.0, 1.0, -0.5, 0.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.5, -0.5, 0.75, 0.75, -0.25, 0.25, -1.0, -0.75, -1.0, 0.5, -0.5, 0.5, -0.25, 0.0, -1.0, 0.25, -0.75, 0.25, -0.75, 0.0, 0.5, -0.5, -0.5, 0.0, -0.5, 0.25, -0.25, 0.0, -0.5, -0.75, 0.0, -1.0, 0.25, -1.0, 0.75, 0.0, 1.0, -0.5, -0.5, -0.75, 0.5, -0.25, -1.0, 0.5, 0.5, -0.75, ]);
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1001.insertDebugMarker("marker")
    
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
    texture100.destroy();
    compute_pass_encoder1001.insertDebugMarker("marker")
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1001.popDebugGroup()
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.setPipeline(render_pipeline201);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    command_encoder500.popDebugGroup()
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    buffer501.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    const command_buffer500 = command_encoder500.finish();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device20.queue.submit([command_buffer201, ]);
    buffer201.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    query203.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query202.destroy()
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array4 = new Float32Array([-0.75, 0.5, 0.75, -1.0, 0.25, -0.5, 0.0, 1.0, -0.75, -1.0, 0.0, -1.0, -0.25, 1.0, 0.75, 0.5, 0.0, 0.5, 1.0, 0.25, -1.0, 0.25, 0.5, 0.75, 0.75, -0.25, 0.0, 0.0, 1.0, 1.0, 0.25, -0.5, -0.25, 0.75, -0.75, 0.75, 0.0, -1.0, 1.0, 0.5, 0.5, -1.0, -0.75, -1.0, 0.0, 0.75, -0.25, -0.75, -0.75, 0.0, 0.25, -0.75, 0.5, 0.25, -0.5, 0.25, 0.5, 0.5, 0.25, 1.0, -1.0, 0.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, -0.75, 0.5, -1.0, 0.25, -0.5, -0.5, -0.5, 0.75, 0.5, 0.75, 1.0, -0.5, 0.0, 0.25, 0.25, 0.25, -0.75, -0.75, -0.75, 0.0, -0.75, -1.0, -0.25, -1.0, -1.0, 0.0, -0.75, -0.25, -1.0, ]);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device50.queue.submit([command_buffer500, ]);
    buffer202.destroy()
    render_pass_encoder2020.setStencilReference(1);
    
    query205.destroy()
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    texture101.destroy();
    
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
    buffer502.destroy()
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.draw(3);
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query204.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
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
    buffer500.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    compute_pass_encoder1001.insertDebugMarker("marker")
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    query100.destroy()
    render_pass_encoder2020.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    query202.destroy()
    const array5 = new Float32Array([-0.25, -0.5, 0.75, 1.0, 0.5, -1.0, 1.0, -0.5, -0.75, -0.75, 0.0, -0.25, 1.0, -1.0, -0.5, -1.0, -0.75, 0.75, 1.0, -0.75, -0.5, -0.25, 0.75, 0.75, 0.25, 0.5, 0.5, -0.25, -1.0, 0.5, 0.5, -0.25, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 0.5, -1.0, 0.0, -0.75, -0.75, 0.75, 0.25, 0.75, -1.0, -1.0, 0.0, -0.25, -1.0, 0.5, -0.5, -0.5, 0.25, -0.5, 0.0, 0.75, -1.0, -0.5, 0.5, 1.0, 0.75, 1.0, -1.0, 0.5, 0.25, 0.75, 0.5, 0.0, -1.0, 1.0, 0.25, 0.25, -0.75, -1.0, -0.25, 0.0, -1.0, 0.75, -1.0, 1.0, 0.25, -0.75, -1.0, 0.25, 0.0, -0.25, 0.75, -0.25, 0.25, 0.75, 0.75, -0.25, 1.0, 0.5, 0.25, 0.0, -0.5, 0.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("out-of-memory");
    const array6 = new Float32Array([-0.25, -0.5, 0.5, -1.0, -1.0, -1.0, 0.75, 0.5, -1.0, 1.0, 0.0, -0.25, 0.25, 1.0, -0.75, -0.75, 0.75, 0.0, -0.25, -0.5, 0.25, 0.0, 0.75, 0.75, -1.0, 0.5, -1.0, -1.0, -0.5, -0.5, -0.75, -0.5, -0.5, 0.5, 1.0, -1.0, 1.0, -0.25, 0.75, 0.75, 0.75, -0.5, 0.75, 0.25, -0.25, -1.0, 0.75, -0.25, 0.0, 0.75, 0.25, 0.5, -0.75, -0.75, 0.5, 0.0, 0.25, -0.75, 0.25, -0.25, 0.5, -0.5, -0.75, -0.5, -0.75, -0.25, 0.5, 0.0, -0.75, 0.5, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 1.0, 0.25, -0.75, -0.5, 0.5, 0.75, 1.0, 0.75, 1.0, -0.25, 0.0, 0.25, 0.25, 0.75, 1.0, 0.25, -0.75, 0.5, -0.25, -0.25, 0.75, 0.0, -0.25, 0.5, ]);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    query202.destroy()
    
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    
    query204.destroy()
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query204
    });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    query202.destroy()
    texture102.destroy();
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.destroy();
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder2030.setStencilReference(1);
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
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query205.destroy()
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    query202.destroy()
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query200
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_pass_encoder2021.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
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
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.pushErrorScope("internal");
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query204.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder201.setPipeline(render_pipeline200);
    command_encoder300.insertDebugMarker("mymarker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    buffer503.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_pass_encoder2031.setPipeline(render_pipeline202);
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer203.destroy()
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
    compute_pass_encoder1001.popDebugGroup()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query205
    });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2030.setPipeline(render_pipeline203);
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group201);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder2021.setPipeline(render_pipeline201);
    render_pass_encoder2022.setPipeline(render_pipeline204);
    buffer204.destroy()
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    const array7 = new Float32Array([0.0, 0.0, -0.75, 0.0, 0.0, -0.75, 0.5, -0.25, 1.0, 0.75, 0.75, -0.75, 0.5, -0.75, -0.75, 1.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.0, 0.75, -1.0, -1.0, -0.5, -0.75, 0.25, 0.25, -1.0, -0.5, 1.0, 0.0, -0.75, 0.25, 0.75, 0.5, 0.25, 0.5, 0.25, -0.5, 1.0, -0.5, 0.25, -1.0, 1.0, 0.75, 0.75, -0.5, 0.25, -0.75, 1.0, 0.75, -0.5, 0.25, 0.5, 1.0, 1.0, -1.0, -0.25, -1.0, 0.75, -1.0, 0.75, -1.0, 0.0, 0.5, -0.25, 1.0, 1.0, -0.75, -0.75, -1.0, 0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 0.75, -1.0, -0.5, -0.5, 0.0, -1.0, -0.75, 0.25, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, 0.25, 0.25, 0.5, -1.0, 0.75, -0.75, -0.5, ]);
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
    
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([]);
    
    query202.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2031.setStencilReference(1);
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
    query201.destroy()
    
    
    texture203.destroy();
    render_pass_encoder2021.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
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
    render_bundle_encoder202.setPipeline(render_pipeline203);
    command_encoder202.insertDebugMarker("mymarker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder2031.pushDebugGroup("group_marker");
    render_pass_encoder2021.popDebugGroup();
    
    render_pass_encoder2030.setStencilReference(1);
    device70.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline101);
    command_encoder300.popDebugGroup()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query206
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_pass_encoder2021.pushDebugGroup("group_marker");
    texture500.destroy();
    render_pass_encoder2031.setVertexBuffer(0, buffer205);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query203.destroy()
    texture104.destroy();
    
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
    render_pass_encoder2022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder2040.setPipeline(render_pipeline204);
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    query205.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.end();
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder2040.setStencilReference(1);
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group202);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    query203.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2021.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2031.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout204]
    });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_pass_encoder2031.insertDebugMarker("marker");
    
    texture202.destroy();
    
    
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_bundle_encoder202.insertDebugMarker("marker");
    query200.destroy()
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_pass_encoder2041.setPipeline(render_pipeline201);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2031.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2050.executeBundles([])
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device70.pushErrorScope("validation");
    texture300.destroy();
    render_pass_encoder2050.setPipeline(render_pipeline204);
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    render_pass_encoder2041.endOcclusionQuery()
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group204);
    render_pass_encoder2021.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.popDebugGroup()
    render_pass_encoder2030.setVertexBuffer(0, buffer203);
    device00.queue.submit([command_buffer000, ]);
    device90.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2022.setBindGroup(0, bind_group205);
    render_pass_encoder2030.setIndexBuffer(buffer206, "uint16");
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group206);
    render_pass_encoder2030.draw(3);
    device30.queue.submit([command_buffer300, ]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2030.end();
    render_pass_encoder2041.setVertexBuffer(0, buffer201);
    render_pass_encoder2041.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2040.setVertexBuffer(0, buffer202);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2041.draw(3);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2030.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2022.setVertexBuffer(0, buffer2013);
    render_pass_encoder2022.drawIndirect(buffer208, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2010, 0);
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group207);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2041.draw(3);
    render_pass_encoder2022.end();
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2050.setVertexBuffer(0, buffer204);
    render_pass_encoder2022.drawIndirect(buffer2013, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2050.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.end();
    const command_buffer100 = command_encoder100.finish();
    command_encoder001.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2021.setVertexBuffer(0, buffer208);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2022.draw(3);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2050.end();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    const command_buffer205 = command_encoder205.finish();
    device30.queue.submit([]);
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    device20.queue.submit([command_buffer200, command_buffer203, command_buffer204, command_buffer205, ]);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2041.end();
    render_pass_encoder2041.end();
    render_pass_encoder2030.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder2031.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.end();
    device70.queue.submit([]);
    render_pass_encoder2041.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.drawIndexed(3);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2010, 0);
    render_pass_encoder2040.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2022.draw(3);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2040.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2040.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2040.drawIndirect(buffer207, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    render_pass_encoder2022.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2050.end();
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2050.end();
    render_pass_encoder2030.setIndexBuffer(buffer2015, "uint16");
    device20.queue.submit([command_buffer202, ]);
    const command_buffer400 = command_encoder400.finish();
    device50.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2021.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer200, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2022.draw(3);
    render_pass_encoder2040.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2031.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2041.end();
    device40.queue.submit([]);
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    device20.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2022.drawIndirect(buffer2011, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder2030.end();
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2050.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2021.end();
    render_pass_encoder2050.draw(3);
    device20.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder2040.end();
    render_pass_encoder2050.end();
    render_pass_encoder2022.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer205, 0);
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    device10.queue.submit([]);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2021.end();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2041.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2040.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2016, "uint16");
    device90.queue.submit([]);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2020.end();
    render_pass_encoder2040.draw(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2022.endOcclusionQuery()
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2030.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2022.drawIndirect(buffer2015, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2041.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2031.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder1000.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    device30.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2040.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2022.drawIndirect(buffer2013, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2050.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2040.end();
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2031.drawIndirect(buffer2010, 0);
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    render_pass_encoder2041.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device10.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2022.drawIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2030.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder1000.draw(3);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2040.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2041.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2014, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2021.end();
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2022.endOcclusionQuery()
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2021.end();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2040.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder1001.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2041.drawIndirect(buffer2013, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer2017, 0);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2030.popDebugGroup();
    device90.queue.submit([]);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2022.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2022.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2041.end();
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2040.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2022.drawIndirect(buffer206, 0);
    device20.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2022.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder1000.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2021.end();
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2050.end();
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2022.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2041.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    compute_pass_encoder1001.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder2022.draw(3);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2030.end();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder2041.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.drawIndexed(3);
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
}