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
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-0.5, -0.75, 0.0, -1.0, -0.5, 0.5, -0.5, -0.5, -1.0, -0.5, 0.75, 0.25, -1.0, -0.25, -0.5, -0.5, -0.75, -0.25, -0.5, 1.0, 1.0, 0.25, -1.0, -0.75, 0.75, 0.75, 1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.75, -0.5, -1.0, -0.75, -1.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.5, -1.0, -0.25, 0.0, 0.0, 1.0, 0.0, 0.25, -0.5, 0.25, -1.0, -0.25, -1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.0, -1.0, 0.25, -1.0, -1.0, -1.0, -0.5, -1.0, 0.0, 0.5, -1.0, 0.0, -1.0, 0.25, 1.0, -0.5, -0.5, 0.25, -0.75, -0.5, 0.5, -0.25, 0.25, 0.0, 0.25, -1.0, 0.0, -0.5, 0.75, 0.25, 0.5, -0.25, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, -0.25, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    
    
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    device00.destroy();
    
    const array1 = new Float32Array([-0.25, 0.75, -1.0, 0.75, -0.25, -1.0, -0.5, -1.0, 0.25, 1.0, -0.75, 0.25, 0.5, 1.0, -0.75, 0.25, -0.5, 0.25, 0.0, -1.0, 0.25, 0.5, -0.25, -1.0, -0.75, -0.5, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 1.0, 0.25, -0.25, -0.25, 1.0, -0.5, -1.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.5, 0.25, 0.5, 0.5, 1.0, 0.5, -0.75, 0.25, 0.25, 0.25, 0.0, 0.0, -1.0, -0.75, -0.5, -1.0, -0.75, -0.75, 0.5, 0.75, 0.5, -1.0, 0.75, 0.25, -0.75, -0.5, 0.75, 0.5, -0.25, -0.25, -0.25, -0.75, 0.0, -0.25, -0.25, -0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -0.5, -0.25, 1.0, 0.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.5, -0.25, 0.75, -0.75, -0.75, -0.75, ]);
    const array2 = new Float32Array([-1.0, 0.75, -0.75, -0.5, -0.5, -1.0, -0.75, 1.0, -0.25, -0.25, 0.75, 0.25, 1.0, -0.5, -0.5, -0.5, 0.75, 0.75, 0.25, 0.25, -1.0, 1.0, -1.0, 1.0, -0.5, 0.5, 0.0, -1.0, 0.5, -0.25, -0.25, -0.25, -1.0, 0.0, 0.25, 1.0, 0.25, 0.75, -1.0, 0.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.25, -1.0, 0.75, 0.75, -1.0, 0.5, 0.25, -1.0, -1.0, 0.75, -1.0, 0.5, 0.0, -0.75, -0.5, -1.0, 0.75, 0.75, 0.5, 0.25, 0.25, -0.75, 1.0, -1.0, 1.0, -0.5, 1.0, 0.25, -0.5, 0.5, 0.25, 0.75, 1.0, 0.0, -0.5, -1.0, -0.75, -0.5, -0.5, 1.0, -0.5, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, 0.25, 0.75, 0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device20.pushErrorScope("out-of-memory");
    
    command_encoder101.insertDebugMarker("mymarker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const array3 = new Float32Array([0.0, 0.75, 0.0, 1.0, -0.5, -0.5, -0.25, 0.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.5, 0.25, -0.5, -0.75, 0.5, 0.75, -0.5, 0.0, 1.0, 0.75, 0.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.75, 0.75, 1.0, -0.25, -0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -1.0, 0.5, 1.0, 0.0, 0.75, 0.75, -0.75, 0.0, 0.0, 1.0, -0.5, 1.0, -0.25, 0.0, 0.75, 0.25, -1.0, 0.25, 0.75, 0.5, 0.5, -0.75, 0.25, 0.75, -1.0, 0.75, -1.0, 0.75, 0.75, 0.25, -0.75, 0.75, -0.25, -0.75, -0.75, -0.5, 0.25, -0.5, 0.5, 0.0, 0.5, -1.0, -0.25, 0.25, -0.25, -0.25, 0.0, 0.25, -0.5, 0.25, 1.0, -1.0, -0.75, 0.5, 0.75, 1.0, 0.25, -0.5, 0.0, 0.0, -0.75, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder101.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    query101.destroy()
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    query101.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array4 = new Float32Array([0.75, 0.25, -0.25, 0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -0.25, 0.0, 1.0, 0.5, 0.25, 0.0, -0.75, 0.5, 0.0, 0.5, 0.25, -1.0, -1.0, 0.5, -0.5, 1.0, -0.5, -0.75, -0.75, -0.5, 1.0, 1.0, 0.25, -0.25, 0.75, 0.25, 0.5, -0.75, -0.75, 0.5, -0.25, -0.75, -0.75, -0.25, -0.5, -0.25, 0.5, -0.5, 0.75, 0.75, -0.5, 0.25, 0.0, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, 0.5, 0.0, -0.25, -0.75, -0.75, -1.0, -1.0, -0.5, 0.75, 0.5, 0.75, 0.25, 1.0, 0.0, 0.5, -0.5, 0.75, 1.0, -0.25, 1.0, 0.75, 0.5, 0.0, 0.5, -0.25, 0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.75, -0.75, 1.0, 1.0, 0.75, -0.5, 0.5, -1.0, -0.75, -1.0, 0.75, ]);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    device20.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer101.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer103.destroy()
    texture400.destroy();
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    texture100.destroy();
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    texture401.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline102);
    buffer102.destroy()
    const array5 = new Float32Array([0.75, -0.25, 0.25, 0.5, -1.0, 0.75, -0.5, 0.0, 0.0, 0.75, 1.0, -0.25, 0.5, 0.0, -0.75, -1.0, 0.25, 0.5, -1.0, -0.75, 0.25, 0.25, 0.5, 0.25, -0.5, -1.0, -1.0, -0.75, 0.75, 0.25, -0.75, -0.75, 0.5, -1.0, 0.0, -1.0, -0.5, -1.0, 0.0, -1.0, -1.0, 0.25, 0.75, -0.5, -0.75, 0.5, 0.0, 0.0, -0.75, 0.25, -0.25, 1.0, 0.25, -0.75, 0.25, 0.75, -1.0, -0.25, 0.5, 1.0, -1.0, -0.75, -1.0, 0.75, -0.75, 1.0, 0.5, -0.75, -0.25, 0.75, -0.25, 0.25, -0.25, -0.5, -0.25, -0.25, 0.0, -0.5, -0.75, -0.25, 1.0, -1.0, 0.0, -0.75, -0.25, 0.0, 0.5, 0.25, -1.0, 0.25, 0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 0.5, -1.0, 0.25, -0.75, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    buffer100.destroy()
    command_encoder401.pushDebugGroup("mygroupmarker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer401.destroy()
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_bundle_encoder101.popDebugGroup();
    command_encoder401.insertDebugMarker("mymarker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array6 = new Float32Array([1.0, 0.5, -1.0, 0.0, -0.25, -0.5, -0.75, -0.25, -0.75, -1.0, -1.0, -0.5, -0.75, 1.0, -1.0, 0.75, 0.25, -0.75, -1.0, -0.5, -0.75, 0.25, -1.0, -1.0, -0.5, -0.25, 0.0, -0.75, 0.75, 0.5, -0.5, -1.0, 0.25, 0.5, 0.0, 0.0, -0.5, -0.25, 0.25, -1.0, -0.75, -0.5, -0.75, 0.0, -0.75, 0.25, -0.75, -0.75, -0.25, 0.5, -0.5, 1.0, 0.0, 0.0, -0.25, -0.25, 0.25, 0.75, -1.0, -0.75, 0.25, 0.25, -0.5, 0.25, 0.25, 0.5, 0.5, 0.0, 0.75, 1.0, -0.75, -0.5, -0.5, -1.0, 0.75, -1.0, -0.25, -0.75, 0.25, -0.75, -0.75, -0.75, 0.25, 0.75, 0.5, 1.0, 0.5, 0.0, 1.0, -0.25, 0.75, 0.75, 1.0, 0.25, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, ]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    buffer104.destroy()
    const array7 = new Float32Array([0.5, 0.0, 0.5, -0.25, -1.0, 1.0, -0.25, 0.25, -0.75, 0.75, 0.5, 1.0, -1.0, 0.25, 0.75, -0.5, -0.75, -0.25, 0.75, 0.25, -0.25, -1.0, 1.0, 0.0, 0.5, 1.0, -1.0, -0.75, 0.25, 0.25, 0.0, -0.25, -0.5, 0.25, 1.0, 1.0, -1.0, -0.75, -0.75, 1.0, 0.25, 0.75, 1.0, -0.5, -1.0, 1.0, 0.75, 0.5, -0.5, 0.0, 0.25, -1.0, -0.5, 0.0, 0.75, -0.25, 0.5, 0.5, 0.25, -0.25, 0.75, -0.25, -0.25, 0.75, -0.25, -0.75, -0.5, 1.0, 0.0, -0.25, -0.5, 0.25, -0.5, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, -0.5, -1.0, 0.25, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, 0.75, 0.0, -1.0, -0.25, 0.25, -0.5, 0.0, -1.0, 1.0, -0.25, -0.25, 0.5, ]);
    query400.destroy()
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    query102.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    
    buffer107.destroy()
    device10.pushErrorScope("validation");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer108, 0);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
    
    compute_pass_encoder1000.popDebugGroup()
    
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    query101.destroy()
    
    buffer108.destroy()
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer400.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query104.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
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
    compute_pass_encoder1020.setPipeline(compute_pipeline104);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query103.destroy()
    query104.destroy()
    buffer1010.destroy()
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    query103.destroy()
    buffer402.destroy()
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer106.destroy()
    device50.destroy();
    compute_pass_encoder1030.insertDebugMarker("marker")
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1014, 0);
    device10.queue.writeBuffer(buffer1014, 0, array7, 0, array7.length);
    
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    compute_pass_encoder1010.popDebugGroup()
    
    
    
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture101.destroy();
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device10.queue.writeBuffer(buffer1014, 0, array7, 0, array7.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer1014, 0, array4, 0, array4.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    
    query102.destroy()
    
    device10.queue.writeBuffer(buffer1015, 0, array1, 0, array1.length);
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device60.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer1015, 0, array6, 0, array6.length);
    
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4030,
            },
        ],
        occlusionQuerySet: query401
    });
    
    device10.queue.writeBuffer(buffer1015, 0, array3, 0, array3.length);
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
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
    
    device10.queue.writeBuffer(buffer1018, 0, array5, 0, array5.length);
    render_pass_encoder4020.setPipeline(render_pipeline401);
    render_pass_encoder4020.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1018, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    buffer1017.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer1018, 0, array3, 0, array3.length);
    render_pass_encoder4020.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const texture_view4032 = texture403.createView({ label: "texture_view4032" });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    device10.queue.writeBuffer(buffer1014, 0, array6, 0, array6.length);
    device70.destroy();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    render_pass_encoder4020.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    
    
    render_pass_encoder4020.beginOcclusionQuery(0)
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const array8 = new Float32Array([-0.75, 0.5, -0.75, -0.75, -0.75, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, -1.0, -1.0, -1.0, -0.5, -1.0, 1.0, -0.5, 0.0, -0.25, -0.25, 0.5, 1.0, 0.5, 0.0, -0.25, -0.25, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, 0.25, 1.0, 0.75, -0.25, 1.0, -1.0, -0.75, -0.5, -0.25, 0.75, 0.0, 0.0, -0.25, 1.0, 0.0, -1.0, 1.0, 0.5, -0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.0, 0.25, -0.75, -0.5, -0.25, 0.0, 0.0, -0.25, 1.0, -1.0, 0.5, -0.75, 0.25, 1.0, 0.5, 0.5, -1.0, 0.75, 0.25, 0.5, -0.75, 0.5, 0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 0.75, -0.25, -0.75, -1.0, 0.0, 0.25, -1.0, 0.5, 0.75, -1.0, 0.5, -1.0, 0.25, 0.5, -0.75, ]);
    query101.destroy()
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const array9 = new Float32Array([0.5, 1.0, 0.75, 0.75, 0.75, 0.0, 0.75, 0.25, -0.5, 0.75, -0.75, -0.5, 0.5, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, 0.75, 0.75, 0.0, -0.5, 0.5, -1.0, 0.25, 1.0, 0.5, -0.5, -1.0, -0.75, 1.0, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.5, 0.25, -0.25, 1.0, 0.0, 1.0, 0.0, 0.75, -0.25, 0.0, 0.75, 0.25, -1.0, -0.5, 0.25, 0.75, 0.75, -0.5, -0.25, -1.0, -1.0, 1.0, 0.0, -0.5, -0.5, 0.25, 0.75, 0.5, 0.75, 0.25, 0.0, 0.5, -1.0, 0.5, 1.0, 0.0, -0.5, 1.0, -1.0, -0.25, -0.5, -0.5, 0.0, -0.75, -1.0, 0.75, -1.0, 0.25, 0.0, -1.0, 0.25, 0.75, 0.75, -0.75, 0.0, 0.75, 0.0, -0.5, -0.5, -0.25, -0.25, -0.25, ]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeBuffer(buffer1018, 0, array5, 0, array5.length);
    buffer1015.destroy()
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1014, 0, array9, 0, array9.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    device10.queue.writeBuffer(buffer1018, 0, array6, 0, array6.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    device10.queue.writeBuffer(buffer1018, 0, array0, 0, array0.length);
    render_pass_encoder4020.insertDebugMarker("marker");
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer1018, 0, array2, 0, array2.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query100.destroy()
    texture404.destroy();
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    buffer109.destroy()
    
    query105.destroy()
    texture402.destroy();
    device10.queue.writeBuffer(buffer1014, 0, array8, 0, array8.length);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1018, 0, array8, 0, array8.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query404.destroy()
    command_encoder403.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1020.end();
    render_pass_encoder4020.endOcclusionQuery()
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4031,
            },
        ],
        occlusionQuerySet: query402
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query105
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer1011.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.pushErrorScope("internal");
    
    render_pass_encoder4030.setPipeline(render_pipeline402);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setStencilReference(1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder101.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_pass_encoder4030.setStencilReference(1);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer1016.destroy()
    
    
    render_pass_encoder1020.setPipeline(render_pipeline103);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.popDebugGroup()
    query106.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query403.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.queue.writeBuffer(buffer1018, 0, array6, 0, array6.length);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
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
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_pass_encoder4020.setScissorRect(0, 0, texture403.width / 2, texture403.height / 2);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("out-of-memory");
    buffer1013.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    device10.queue.writeBuffer(buffer1014, 0, array4, 0, array4.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder4030.insertDebugMarker("marker");
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group106);
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder4030.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    
    render_pass_encoder4030.setViewport(0, 0, texture403.width / 2, texture403.height / 2, 0, 1);
    query404.destroy()
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline403);
    render_pass_encoder4020.popDebugGroup();
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
        layout: compute_pipeline403.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer405, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer405, 0);
    command_encoder600.popDebugGroup()
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
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1023, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1023, 0);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group107);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.end();
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder4020.setVertexBuffer(0, buffer402);
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder4030.setVertexBuffer(0, buffer402);
    render_pass_encoder4020.drawIndirect(buffer405, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder4020.end();
    compute_pass_encoder4010.end();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4030.draw(3);
    command_encoder401.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4030.end();
    const command_buffer101 = command_encoder101.finish();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer403 = command_encoder403.finish();
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([command_buffer401, command_buffer402, command_buffer403, ]);
}