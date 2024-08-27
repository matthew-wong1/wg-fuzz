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
    const array0 = new Float32Array([0.0, 0.75, -0.5, -0.75, 0.5, 1.0, 0.5, -0.25, 0.0, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, 0.75, 0.25, 1.0, -0.75, 0.75, 0.25, 1.0, 1.0, -0.25, -0.5, -0.75, 1.0, -0.5, 1.0, 0.0, 0.25, -0.5, -0.25, 0.0, 0.25, 0.75, 0.25, 0.75, -0.75, 0.75, 0.5, 0.25, 0.75, 0.0, -1.0, -0.75, 0.75, -0.75, 1.0, 0.75, 0.25, 0.25, 0.5, 0.5, 0.75, -0.75, 0.0, -1.0, 0.75, 0.0, 0.75, -0.5, 0.0, -0.25, 1.0, 0.25, -0.5, -0.5, 0.75, 0.5, 1.0, 0.5, 0.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.5, -0.25, 0.5, -1.0, 1.0, 0.5, -0.5, 0.0, -0.25, 1.0, -0.5, -0.25, -0.25, 0.0, 1.0, 0.75, 0.0, 0.0, -1.0, -0.25, 0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.5, 0.5, 1.0, 1.0, -0.75, 0.25, -1.0, -0.25, -1.0, -0.25, -0.75, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, -0.75, 0.0, 0.25, 0.25, 1.0, 0.5, -0.5, 0.0, 0.75, 0.75, 1.0, 1.0, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -1.0, 0.75, 1.0, -0.75, -0.5, 0.0, -0.5, 0.0, -1.0, -0.75, 0.0, 0.5, 1.0, -1.0, -0.5, -0.25, 0.25, -0.5, -0.5, 0.75, -1.0, 0.0, 0.25, 0.25, -0.25, -0.75, -0.75, -0.75, 0.25, -0.25, 0.0, -1.0, 0.25, -0.5, -0.5, -0.75, 0.25, 0.5, -0.75, -0.5, -0.75, 0.75, -0.5, 0.25, -0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 0.5, -0.5, 0.0, 1.0, -1.0, 0.0, -0.75, 0.0, -0.25, 0.5, 1.0, 0.0, 1.0, 0.25, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device30.destroy();
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer101 = command_encoder101.finish();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([0.25, -0.25, 1.0, 1.0, -0.5, 0.25, 0.75, -1.0, -0.25, 0.75, -0.5, 0.75, 0.25, -0.75, 0.0, -0.25, 0.0, 0.0, -0.5, 1.0, 0.25, 0.5, 0.5, -0.75, -1.0, 0.5, 0.0, -0.25, -0.5, -0.75, 1.0, 0.25, 0.0, -1.0, 0.5, 0.0, 0.0, -0.5, -0.75, 0.0, 0.25, -1.0, 0.0, -0.25, 0.5, -1.0, -0.75, -0.75, -0.5, -0.25, 0.5, 0.5, -0.25, -1.0, 0.0, 1.0, 0.25, 0.5, -0.5, -0.5, 0.25, -1.0, -0.5, 0.25, -1.0, -1.0, 0.25, 0.75, -0.75, -0.5, -1.0, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, -0.75, -0.75, -1.0, -0.75, 1.0, 0.0, 0.5, 0.75, -0.75, 0.75, 0.75, 1.0, -1.0, -0.75, 1.0, 0.25, -0.75, 1.0, 0.25, 0.25, 0.75, -0.75, -0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    device30.destroy();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture102.destroy();
    texture100.destroy();
    query101.destroy()
    query100.destroy()
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    query101.destroy()
    device00.pushErrorScope("out-of-memory");
    
    device10.pushErrorScope("out-of-memory");
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture103.destroy();
    device20.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.popDebugGroup();
    buffer100.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_buffer102 = command_encoder102.finish();
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query104.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query000.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query100.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    render_pass_encoder1000.executeBundles([])
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder400.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    query400.destroy()
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    query100.destroy()
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    
    texture104.destroy();
    render_bundle_encoder000.draw(3);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1001.insertDebugMarker("marker");
    command_encoder400.popDebugGroup()
    
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer401.destroy()
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1001.executeBundles([])
    device50.destroy();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    query101.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const array3 = new Float32Array([-0.25, -0.25, -0.5, -0.75, -1.0, -1.0, 0.0, 0.0, 0.0, -1.0, 0.5, 0.75, -0.5, -0.5, 0.5, -1.0, 0.5, 0.0, 0.25, 0.75, 0.5, -1.0, -0.25, 0.25, 0.25, -0.25, 1.0, 0.25, -0.25, -0.75, 1.0, -0.75, -0.5, 0.0, -1.0, 0.25, 0.25, -0.75, 0.5, 0.75, -0.75, -0.5, -0.75, 0.5, 1.0, 0.75, -0.75, 1.0, 0.25, 0.5, -0.25, -0.75, -1.0, 0.0, 0.5, 0.75, 0.5, -1.0, -0.5, -0.25, -0.75, -0.25, 1.0, 0.5, 0.0, 0.5, -1.0, -1.0, 0.0, -0.75, -0.5, 1.0, -0.25, 1.0, 0.25, -0.25, -0.5, -0.5, 0.5, 1.0, 0.0, 0.0, -1.0, 0.5, 0.25, 1.0, -0.75, -0.25, 1.0, -0.5, 0.5, 0.5, -1.0, -0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 0.5, ]);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1000.insertDebugMarker("marker");
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.queue.submit([]);
    query400.destroy()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    buffer002.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query104
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer000.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    query102.destroy()
    render_pass_encoder1001.popDebugGroup();
    render_bundle_encoder000.draw(3);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query400.destroy()
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1001.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query102.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    query105.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query106
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_pass_encoder1030.insertDebugMarker("marker");
    const array4 = new Float32Array([0.0, -0.25, 0.0, -0.25, 0.5, -0.5, -0.5, 0.0, 0.75, 0.0, 0.75, -0.75, -1.0, -1.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.75, -1.0, -0.5, 0.0, -0.25, 0.5, 0.0, 0.25, -1.0, -0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 0.75, 0.0, -0.25, 0.5, 0.0, 0.0, 0.0, 0.75, -0.5, 1.0, -0.25, -0.25, 1.0, -0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 0.75, -0.75, -0.5, 0.75, 0.5, 0.0, 1.0, 0.25, 1.0, 0.75, -0.5, 0.0, 1.0, -0.25, 1.0, 0.5, -0.25, 1.0, -0.5, 0.75, -1.0, 1.0, 0.5, 0.25, 0.75, -1.0, -1.0, 0.75, -1.0, -0.25, 1.0, 1.0, -0.5, 0.0, -0.25, 0.25, 0.25, -0.25, -1.0, 0.5, 1.0, -0.75, 0.0, 1.0, -0.5, -1.0, 0.25, ]);
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1031.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    query104.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    query105.destroy()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query107.destroy()
    render_bundle_encoder102.popDebugGroup();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device70.destroy();
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture401.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_pass_encoder1031.insertDebugMarker("marker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query100.destroy()
    query400.destroy()
    render_pass_encoder1030.setStencilReference(1);
    query107.destroy()
    render_pass_encoder1031.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_buffer601 = command_encoder601.finish();
    query107.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    render_pass_encoder1001.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    query400.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.popDebugGroup();
    device10.pushErrorScope("out-of-memory");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query107
    });
    
    query000.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer401 = command_encoder401.finish();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    query000.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    buffer000.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    render_pass_encoder1000.endOcclusionQuery()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query101.destroy()
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.endOcclusionQuery()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    render_pass_encoder1050.insertDebugMarker("marker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    device60.pushErrorScope("internal");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    
    
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1040.setStencilReference(1);
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    command_encoder103.popDebugGroup()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1041.insertDebugMarker("marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder1041.executeBundles([])
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
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
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder400.popDebugGroup();
    texture001.destroy();
    buffer001.destroy()
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
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
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    
    render_pass_encoder1031.setPipeline(render_pipeline100);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device80.destroy();
    
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder1031.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1000.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query101.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder600.insertDebugMarker("mymarker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    query600.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.setPipeline(compute_pipeline102);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1030.popDebugGroup();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder4010.setPipeline(compute_pipeline402);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.setPipeline(render_pipeline100);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder4010.popDebugGroup()
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group102);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder1041.setPipeline(render_pipeline100);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.popDebugGroup();
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1041.setBindGroup(0, bind_group104);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder1000.setVertexBuffer(0, buffer108);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group106);
    render_pass_encoder1041.setVertexBuffer(0, buffer1012);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder1041.draw(3);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1030.setVertexBuffer(0, buffer1010);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group107);
    render_pass_encoder1001.setVertexBuffer(0, buffer1015);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.setVertexBuffer(0, buffer1010);
    render_pass_encoder1041.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1001.draw(3);
    render_pass_encoder1001.end();
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
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
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group108);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.end();
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1050.setVertexBuffer(0, buffer1012);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    device70.queue.submit([]);
    compute_pass_encoder4010.end();
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1040.setPipeline(render_pipeline100);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group109);
    device10.queue.submit([command_buffer105, ]);
    command_encoder100.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer404, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer404, 0);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1031.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1040.setVertexBuffer(0, buffer107);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer103, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder1050.end();
    render_pass_encoder1040.end();
    render_pass_encoder1041.drawIndirect(buffer1011, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    device10.queue.submit([command_buffer103, ]);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder4010.popDebugGroup()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1041.popDebugGroup();
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1010);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1041.end();
    render_pass_encoder1050.drawIndexed(3);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1040.popDebugGroup();
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1011);
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    device60.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1041.end();
    render_pass_encoder1041.endOcclusionQuery()
    device60.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer101, ]);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    compute_pass_encoder4010.end();
    device60.queue.submit([]);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1050.end();
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer105, ]);
    device10.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer101, ]);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1013);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.draw(3);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer407, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer407, 0);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder6000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1041.endOcclusionQuery()
    device60.queue.submit([]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1050.end();
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1026, "uint16");
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    device60.queue.submit([]);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer101, ]);
    device50.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.draw(3);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer408, 0);
    device60.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    compute_pass_encoder6000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1001.end();
    device00.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1050.end();
    render_pass_encoder1030.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1050.end();
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1035, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    compute_pass_encoder1050.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder1000.end();
}