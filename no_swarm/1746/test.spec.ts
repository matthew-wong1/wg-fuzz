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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array0 = new Float32Array([-1.0, 0.75, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, -0.25, -0.5, 0.5, 0.75, 0.0, -0.75, 0.75, -0.25, -0.25, -0.75, 1.0, 0.25, -0.5, -1.0, 0.5, 0.5, -0.5, -0.5, 0.75, 0.0, 1.0, -0.25, 0.5, 1.0, 1.0, 0.25, 0.75, 0.0, 0.0, 0.75, -0.5, 1.0, 1.0, -1.0, 1.0, 1.0, 1.0, -1.0, -0.5, 0.0, 1.0, -0.5, 1.0, 1.0, 0.75, 0.25, -0.25, 0.25, 0.75, -0.25, 0.5, 0.5, 0.75, 0.75, 1.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.25, -0.5, -0.75, -1.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.75, 0.75, 0.0, -1.0, 0.25, -0.75, 0.25, -0.75, -0.5, 0.75, 1.0, -0.75, 0.0, 1.0, -0.25, -0.25, -0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 0.0, ]);
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.pushErrorScope("validation");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device00.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const array1 = new Float32Array([-0.5, 0.5, -0.25, 1.0, 1.0, -1.0, -1.0, 1.0, 0.5, 0.0, 0.25, 0.0, 0.0, 0.5, -0.75, -0.25, -1.0, -0.5, -1.0, -0.5, -0.5, -0.75, -1.0, 0.5, -1.0, 0.25, 0.25, 0.0, 0.5, -0.25, 0.5, -0.75, 0.0, -0.25, 0.75, 0.0, 0.5, -0.25, -0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.75, 1.0, -0.75, 1.0, -0.5, -0.25, 0.75, 0.5, 1.0, -0.5, -0.75, 0.75, -1.0, -0.5, -1.0, 0.25, 0.5, 0.25, -0.75, -1.0, -0.75, 1.0, -1.0, 0.0, -0.75, -0.25, 0.0, -1.0, 0.25, -0.25, 0.0, 1.0, -0.25, -0.75, 0.25, 0.75, 0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -1.0, -1.0, 0.5, 0.5, 1.0, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, 0.0, 0.0, -1.0, ]);
    buffer100.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    buffer101.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder103.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    compute_pass_encoder1000.popDebugGroup()
    
    device20.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.pushErrorScope("out-of-memory");
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const array2 = new Float32Array([0.0, -0.25, -1.0, 1.0, 0.75, 0.75, 0.75, -0.75, 0.25, 0.5, 1.0, 0.0, -1.0, -0.25, -0.75, 0.0, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, 0.75, 0.75, -1.0, 0.0, -0.5, 0.25, 0.75, 0.25, -0.5, 0.25, 0.75, -0.75, -0.75, 0.0, -0.5, -0.5, -1.0, 1.0, -1.0, -0.75, -0.25, -0.75, 0.0, -0.25, 0.5, -0.75, -0.25, -1.0, -0.5, 0.5, 1.0, 0.5, -0.75, -0.75, -1.0, 1.0, -0.25, 0.0, 0.25, -0.25, 0.0, -0.25, 0.25, 0.0, 0.25, 0.25, -1.0, 0.5, 1.0, -0.75, -0.5, -0.5, -0.5, 1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 1.0, 0.25, 0.0, 0.0, -0.5, 0.0, -0.25, 0.0, -0.75, -0.5, -0.5, 0.25, -0.25, 0.75, 0.25, 0.25, 1.0, -0.25, 0.0, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device40.pushErrorScope("validation");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
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
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    command_encoder103.popDebugGroup()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
    
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
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
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture101.destroy();
    
    render_pass_encoder1040.insertDebugMarker("marker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder1031.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
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
    device50.destroy();
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    texture100.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1040.beginOcclusionQuery(0)
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1040.endOcclusionQuery()
    device60.pushErrorScope("internal");
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1031.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    compute_pass_encoder1011.popDebugGroup()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1020.beginOcclusionQuery(0)
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.setStencilReference(1);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    render_bundle_encoder400.popDebugGroup();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array3 = new Float32Array([0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 1.0, 1.0, 0.0, -0.25, -0.25, 0.25, 0.5, 0.25, 0.0, -0.5, 1.0, -0.75, -0.5, -0.25, -0.75, -1.0, 0.75, 1.0, -1.0, -0.5, 1.0, 1.0, -1.0, 0.25, -1.0, 0.25, -0.25, 0.0, 0.0, -0.25, -0.25, 0.0, -0.5, 0.5, 0.0, 1.0, 0.75, -0.25, -1.0, -1.0, -0.25, -1.0, 1.0, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 1.0, -0.5, -0.25, -0.5, -0.75, 0.5, 0.0, 1.0, 1.0, 0.0, 1.0, -0.25, -0.5, 0.5, 1.0, 0.5, -0.25, 0.0, 0.75, 0.75, -1.0, 0.75, -0.5, -1.0, -0.5, 0.0, 0.75, 0.0, -0.5, 0.25, 0.75, 1.0, -0.5, 0.25, 0.75, -1.0, -0.5, -0.75, 0.25, -0.25, 0.5, -0.5, 0.5, -0.5, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer600.destroy()
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    render_pass_encoder1020.endOcclusionQuery()
    device40.pushErrorScope("validation");
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    query100.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.beginOcclusionQuery(0)
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer400.destroy()
    query600.destroy()
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.beginOcclusionQuery(0)
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device50.pushErrorScope("validation");
    
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer107.destroy()
    render_pass_encoder1001.executeBundles([])
    
    device30.destroy();
    device60.pushErrorScope("out-of-memory");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer104.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.setPipeline(compute_pipeline105);
    render_pass_encoder1040.setStencilReference(1);
    
    render_bundle_encoder100.popDebugGroup();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.destroy();
    
    
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
    
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1011.setPipeline(compute_pipeline103);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    buffer104.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query100.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    texture103.destroy();
    
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1031.setStencilReference(1);
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    
    command_encoder105.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer401.destroy()
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    device40.pushErrorScope("out-of-memory");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    query700.destroy()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1030.setStencilReference(1);
    const command_buffer105 = command_encoder105.finish();
    device80.pushErrorScope("internal");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder100.popDebugGroup();
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
        occlusionQuerySet: query600
    });
    render_pass_encoder1001.executeBundles([])
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder100.drawIndirect(buffer101, 0);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    buffer1011.destroy()
    render_pass_encoder1020.popDebugGroup();
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    render_pass_encoder1020.setStencilReference(1);
    
    buffer102.destroy()
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group105);
    render_pass_encoder1000.popDebugGroup();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder1050.setStencilReference(1);
    device70.destroy();
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    render_pass_encoder1030.setStencilReference(1);
    
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group106);
    render_pass_encoder1050.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder104.copyBufferToTexture(
        {
            buffer: buffer101
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1050.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    render_pass_encoder1041.insertDebugMarker("marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1015.destroy()
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder6000.insertDebugMarker("marker");
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group108);
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    
    
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder102.setVertexBuffer(0, buffer1011);
    render_pass_encoder1041.pushDebugGroup("group_marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    buffer1010.destroy()
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer105.destroy()
    
    texture400.destroy();
    buffer1018.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    buffer1020.destroy()
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture102.destroy();
    query103.destroy()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder1041.setStencilReference(1);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.copyBufferToBuffer(
        buffer1017,
        0,
        buffer1021,
        0,
        400
    );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder6000.insertDebugMarker("marker")
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_pass_encoder1050.insertDebugMarker("marker");
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    render_pass_encoder6000.setPipeline(render_pipeline600);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1025, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
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
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6000.setBindGroup(0, bind_group600);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group1010);
    render_pass_encoder1031.setVertexBuffer(0, buffer1010);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1000.setVertexBuffer(0, buffer1011);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1011);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder1011.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1040.setVertexBuffer(0, buffer1012);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.setVertexBuffer(0, buffer1026);
    render_pass_encoder1050.draw(3);
    compute_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1040.end();
    render_pass_encoder1001.setVertexBuffer(0, buffer1021);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1020.setVertexBuffer(0, buffer1025);
    render_pass_encoder1041.setPipeline(render_pipeline100);
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.end();
    render_pass_encoder6000.setVertexBuffer(0, buffer600);
    render_pass_encoder6000.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder6000.drawIndexedIndirect(buffer600, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder6000.end();
    device10.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.end();
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1012);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder6000.end();
    render_pass_encoder6000.drawIndexedIndirect(buffer600, 0);
    command_encoder102.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    device60.queue.submit([]);
    render_pass_encoder1041.setVertexBuffer(0, buffer1011);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder1000.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1041.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1041.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1025, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group1015);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder6000.drawIndexed(3);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1016);
    render_pass_encoder1041.end();
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    device60.queue.submit([]);
    render_pass_encoder1030.setVertexBuffer(0, buffer1029);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1001.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer104 = command_encoder104.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1017);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1030.end();
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1041.popDebugGroup();
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndexed(3);
    compute_pass_encoder1011.end();
    render_pass_encoder1050.drawIndirect(buffer1025, 0);
    render_pass_encoder6000.popDebugGroup();
    compute_pass_encoder1020.end();
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1032, "uint16");
    device60.queue.submit([]);
    render_pass_encoder1001.end();
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, command_buffer104, command_buffer105, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.end();
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    device90.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1001.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder6000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1020.end();
    render_pass_encoder1000.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1049, 0);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder1011.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device90.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer105, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer104, ]);
    device90.queue.submit([]);
    render_pass_encoder1050.end();
    render_pass_encoder1030.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1049, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    device90.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1050, 0);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1021);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    device60.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder6000.drawIndexed(3);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder6000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder6000.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1041.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    compute_pass_encoder1000.popDebugGroup()
    device80.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1055, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device90.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1056, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device80.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder1041.setIndexBuffer(buffer1037, "uint16");
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.popDebugGroup();
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1050.drawIndirect(buffer1056, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder6000.draw(3);
    render_pass_encoder1041.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder6000.drawIndexed(3);
    compute_pass_encoder1011.popDebugGroup()
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1011.setBindGroup(0, bind_group1023);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder6000.end();
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1041.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    device90.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1057, "uint16");
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1050, 0);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1040.drawIndirect(buffer1040, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1046, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    device90.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1028, "uint16");
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1024);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    device60.queue.submit([]);
    render_pass_encoder1041.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1040.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1041, 0);
    command_encoder000.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1042, "uint16");
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1056, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    device70.queue.submit([]);
}