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
    
    const array0 = new Float32Array([0.25, 0.0, -0.75, 0.5, 0.5, 0.75, 0.75, 1.0, -0.75, 0.0, 0.75, 0.0, -0.5, 0.75, 0.75, 0.75, 0.0, -0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.0, 1.0, -0.75, -1.0, 0.75, 0.5, 0.0, -0.75, 0.25, 1.0, 0.75, 0.5, 0.5, -0.25, -0.5, 0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -0.25, 0.0, 0.75, -1.0, -0.25, -0.5, -0.75, 0.0, -0.5, -0.25, 0.25, 0.0, 0.25, -1.0, 0.5, 1.0, -1.0, -1.0, 0.75, -0.5, 0.5, 1.0, 0.25, 0.5, 0.0, 0.25, -0.25, 0.5, 0.75, 0.5, -0.5, 0.25, -0.75, 0.75, 0.75, -0.75, -1.0, 0.0, -0.25, -0.5, -1.0, 0.75, -0.75, -0.25, 1.0, -0.5, 1.0, -0.75, 0.5, -1.0, 0.0, 0.75, 0.25, 1.0, 0.0, 1.0, ]);
    const array1 = new Float32Array([-1.0, -0.75, 0.75, 0.0, 1.0, 0.75, -1.0, 0.0, -1.0, 0.25, -0.25, -0.75, -0.5, -0.75, 0.5, -0.75, -1.0, -0.25, 0.25, -0.75, -0.75, 0.75, 0.5, 1.0, -0.5, -1.0, 0.75, -0.25, -0.5, 0.25, -0.5, -0.25, 0.25, -0.25, -0.5, 0.0, 0.75, -0.25, -1.0, 1.0, -0.25, -0.75, 1.0, -0.5, 0.5, 0.0, 0.75, -0.25, -0.25, 0.0, 0.5, 0.5, 0.75, -0.75, -1.0, 0.5, -0.25, 0.25, -0.25, -0.75, -0.5, -0.25, 0.25, 0.75, -1.0, 0.75, 0.5, -0.25, -0.25, 0.0, 0.5, 0.25, 0.0, -1.0, -0.75, 0.25, 0.5, -0.25, 0.75, 0.25, 0.5, 1.0, 0.0, -0.25, -1.0, 0.75, 0.5, -0.75, -0.75, 0.0, -1.0, 1.0, 0.0, -0.25, -0.5, 0.0, 0.5, 1.0, -0.25, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([-0.75, 0.0, -0.5, 0.75, -0.25, -0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 0.75, -0.5, 0.75, 0.0, -0.75, -0.5, 1.0, 0.0, 0.75, 0.5, 0.25, 0.0, -1.0, -0.5, -0.75, 0.25, 0.5, 0.75, 1.0, 0.0, 0.0, -1.0, -0.5, 0.75, 0.5, -0.5, 0.25, -0.25, -0.5, 0.25, -0.75, -1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.75, 0.5, -0.25, 0.5, 0.0, 0.75, -1.0, -0.25, 0.25, 0.5, -0.25, -0.5, -0.5, -1.0, -0.5, 0.5, 0.75, -1.0, 0.0, -1.0, 1.0, 0.75, 0.75, 0.0, 0.75, 1.0, 1.0, 0.0, -0.75, 0.25, -1.0, 0.5, 0.5, -0.75, -0.25, 0.75, -1.0, 1.0, -0.75, -1.0, 0.0, 0.0, 0.25, 1.0, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, -1.0, 0.5, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    const array3 = new Float32Array([0.75, 0.25, 0.25, 0.75, 0.5, -0.25, 0.75, 1.0, -0.5, -0.25, 0.25, 0.0, -0.25, 1.0, 0.5, 0.25, 0.5, -1.0, -1.0, -1.0, 0.5, 0.25, -0.75, 0.25, 0.0, -1.0, -0.75, -1.0, -0.5, -0.25, -0.75, 0.0, -0.75, 0.75, 1.0, -0.75, 1.0, 0.75, 1.0, 0.5, 0.5, 0.75, -0.25, 0.75, 0.0, -0.75, -1.0, 0.25, -0.75, 0.5, -0.5, 1.0, -1.0, -0.25, 0.0, -0.5, 0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 0.75, -0.5, -0.75, 0.5, -1.0, 0.75, -0.5, -0.75, -0.5, 0.25, 0.75, 1.0, -0.5, -1.0, -0.25, 1.0, -0.5, 0.75, 0.25, 1.0, -0.25, -1.0, 0.5, -0.5, 0.75, -0.5, 0.75, 1.0, 0.5, -0.5, -0.25, 0.0, 0.0, -0.75, -0.25, 0.25, -1.0, -0.5, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const array4 = new Float32Array([-0.75, 0.25, -0.25, -0.5, 1.0, -1.0, 0.5, 0.25, 1.0, 1.0, -0.25, -0.75, 1.0, 0.75, 0.25, 0.75, -0.25, 0.5, 0.0, 0.0, 0.0, -0.75, 0.75, 0.5, -0.25, 0.5, 1.0, -0.25, 0.75, -0.5, 1.0, 1.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.75, -0.75, -0.75, 0.25, 0.5, -0.25, 0.5, -0.75, -1.0, -1.0, 0.25, 0.75, -0.25, 0.75, 1.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.0, 0.5, -0.25, -1.0, -0.75, 0.75, 1.0, 1.0, 0.5, -0.25, 0.25, 0.75, -0.5, -1.0, -1.0, 0.25, -0.75, 0.75, 0.75, -0.5, 0.5, 0.25, -0.5, 0.75, -0.25, -0.25, 0.75, 0.0, -0.75, -1.0, -0.25, 1.0, -0.25, -0.75, 0.75, 0.75, 0.25, 0.0, 0.25, 0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder003.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
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
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder003.popDebugGroup();
    const array5 = new Float32Array([-0.5, -0.75, 0.75, -0.25, -0.75, 0.5, 0.25, -0.25, -1.0, -0.75, 0.25, 1.0, -0.5, -0.75, -1.0, 0.5, 0.0, 0.75, -1.0, 1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -0.5, -0.25, 0.0, -0.75, -0.75, 0.25, 0.25, -0.75, -0.5, 0.25, 0.25, -0.5, 0.75, -1.0, -0.5, -1.0, 0.0, 1.0, -0.25, -0.75, 0.5, 0.0, 0.25, 0.25, -0.75, -0.5, 0.75, 0.5, 0.0, -0.5, -0.25, -0.5, 1.0, 0.5, -1.0, 0.5, 0.5, -0.25, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, 0.25, 0.0, -1.0, -0.5, 0.25, -0.25, 0.75, 0.0, 0.5, 0.25, -0.25, -0.5, -0.5, 0.0, 0.5, -0.75, 1.0, 0.0, -0.25, -0.25, 0.75, 0.5, 0.0, 0.5, 0.25, 0.5, -0.25, 1.0, -1.0, -0.25, -0.5, ]);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder100.popDebugGroup()
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const render_bundle_encoder004 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder004",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder003.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    render_bundle_encoder004.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1000.executeBundles([])
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const array6 = new Float32Array([1.0, 0.25, -0.5, -0.75, 0.0, 0.0, 0.25, -0.75, 0.75, -0.75, -1.0, -0.5, 0.75, -1.0, 0.25, 0.5, 0.0, 0.5, 1.0, -1.0, -0.25, 1.0, -0.75, 0.25, -0.25, -0.25, -0.75, -0.75, -0.25, -0.75, 0.75, -0.25, 0.75, -1.0, 0.5, 1.0, -1.0, 0.75, -0.25, 1.0, 0.0, 0.25, 0.0, 1.0, 0.75, -0.5, -1.0, -1.0, -1.0, 0.0, 0.75, -0.5, 0.25, 1.0, 0.5, 0.25, -0.5, 0.0, 0.25, -0.25, 1.0, 1.0, 0.75, 0.5, -0.5, -0.5, -0.25, -0.25, -1.0, 0.5, -0.5, -0.75, -1.0, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, -0.25, -0.75, 0.5, -0.25, 1.0, -0.25, 1.0, 1.0, -1.0, 1.0, 0.5, -1.0, -0.25, -0.25, 0.75, 0.25, 0.5, 0.25, 1.0, -0.75, 0.75, ]);
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
    buffer101.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device20.destroy();
    render_bundle_encoder004.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
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
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1010.executeBundles([])
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder002.setPipeline(render_pipeline000);
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1011.beginOcclusionQuery(0)
    render_pass_encoder1010.executeBundles([])
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.popDebugGroup();
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer001.destroy()
    query001.destroy()
    device20.pushErrorScope("internal");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    
    render_pass_encoder1011.beginOcclusionQuery(1)
    
    buffer103.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.popDebugGroup()
    render_bundle_encoder001.insertDebugMarker("marker");
    query101.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
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
    
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder002.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1001.executeBundles([render_bundle_encoder100, ])
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder003.insertDebugMarker("marker");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder1011.beginOcclusionQuery(2)
    render_pass_encoder1010.beginOcclusionQuery(0)
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    render_pass_encoder1001.popDebugGroup();
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    texture101.destroy();
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture000.destroy();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    render_pass_encoder1011.executeBundles([])
    render_pass_encoder1010.endOcclusionQuery()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
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
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query002.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query003.destroy()
    render_bundle_encoder004.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    texture102.destroy();
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    command_encoder002.clearBuffer(buffer003);
    const array7 = new Float32Array([-0.25, 1.0, 0.75, 0.25, 0.0, -0.75, 0.5, 1.0, 0.25, -0.25, 0.25, -0.25, 0.0, 1.0, -0.75, 0.0, 0.75, 0.0, 0.5, 0.75, -0.25, -0.5, 0.0, 0.5, 0.25, -0.75, -0.25, 0.25, -0.75, 1.0, 0.0, -0.5, 0.5, 1.0, 0.75, 1.0, -0.75, 0.75, 0.5, 1.0, -0.25, 0.25, 0.75, 0.25, 0.5, 1.0, -0.75, 0.75, -1.0, -1.0, -0.5, -0.75, -1.0, 0.75, -0.25, -1.0, -0.75, 0.25, 0.5, 0.0, 0.25, 0.5, 0.0, 1.0, -0.75, 1.0, 0.0, 0.75, -1.0, 0.25, 0.5, 0.0, 0.0, -0.5, 0.75, 0.5, 0.75, -0.75, 0.75, 0.5, 1.0, -0.75, -0.25, 0.5, 0.75, -0.25, 0.75, 0.75, -0.5, -0.75, 0.0, 0.75, 0.25, 0.0, 0.0, 0.25, -0.5, 0.75, -0.25, 0.75, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer004.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder003.clearBuffer(buffer000);
    
    const array8 = new Float32Array([-0.25, -0.75, 0.0, -0.25, -0.25, 0.25, -1.0, -0.25, -0.5, 0.0, -0.25, -0.75, 0.25, -0.5, 0.25, 0.5, 0.75, -0.25, 0.75, -0.5, 0.75, -1.0, 0.5, -0.5, 1.0, 0.0, 0.0, 0.75, -1.0, -0.25, 0.25, -0.5, -0.25, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.25, 0.25, -0.5, 1.0, 0.25, 0.5, 0.75, -1.0, 0.0, 0.25, -1.0, -1.0, -0.25, -0.75, 0.75, 0.5, 0.0, -1.0, 0.5, -0.25, 0.0, -0.5, -0.5, -0.5, 0.75, -0.25, -0.5, 1.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.0, 0.0, 0.25, -0.75, 0.5, -0.75, -1.0, -0.75, -1.0, 0.75, -1.0, -0.75, -0.25, -0.25, 0.5, 1.0, -1.0, 0.5, 0.75, 1.0, 0.75, 0.25, 0.75, -0.75, 0.25, 0.0, 0.0, ]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer000.destroy()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    device00.pushErrorScope("validation");
    
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    texture103.destroy();
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    buffer005.destroy()
    
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder0000.setPipeline(render_pipeline002);
    query002.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder004.setPipeline(render_pipeline003);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_pass_encoder1001.setPipeline(render_pipeline100);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
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
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder003.setPipeline(render_pipeline001);
    query002.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    render_pass_encoder1000.popDebugGroup();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    
    render_pass_encoder1000.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query002.destroy()
    render_pass_encoder0030.setPipeline(render_pipeline003);
    
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    
    buffer102.destroy()
    query001.destroy()
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    query002.destroy()
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.setIndexBuffer(buffer000, "uint16");
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const array9 = new Float32Array([0.75, -0.25, -0.75, -0.25, -0.25, 0.0, -0.75, 1.0, 0.0, -0.25, 0.5, -0.75, -0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 0.5, -0.5, 0.75, 0.25, 0.0, -1.0, 1.0, -0.5, 1.0, -0.5, -0.25, -0.5, 0.75, 0.0, -1.0, -0.75, 0.75, 0.25, -0.25, 0.75, -0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 1.0, -0.5, 0.0, 0.5, -0.75, -1.0, -0.5, -1.0, -0.5, 0.5, -0.25, 1.0, 1.0, -1.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.25, 0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.75, 1.0, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.75, -1.0, 0.5, 0.5, -0.5, -0.75, -0.25, -0.25, 0.25, 0.5, 0.0, 1.0, 0.25, 1.0, -1.0, -0.25, 0.75, -0.5, 0.25, ]);
    render_bundle_encoder102.setVertexBuffer(0, buffer106);
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    render_bundle_encoder102.drawIndirect(buffer107, 0);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1011.executeBundles([])
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("validation");
    query000.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    render_bundle_encoder003.insertDebugMarker("marker");
    compute_pass_encoder0010.popDebugGroup()
    
    device00.queue.writeBuffer(buffer003, 0, array9, 0, array9.length);
    query002.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group004);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer000.destroy()
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    buffer004.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder004.popDebugGroup();
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer009.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder102.finish();
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture105.destroy();
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_bundle_encoder000.drawIndirect(buffer009, 0);
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer105.destroy()
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
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
    
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    query003.destroy()
    
    buffer107.destroy()
    
    render_pass_encoder0030.popDebugGroup();
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_pass_encoder0030.setStencilReference(1);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer003.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.queue.writeTexture({ texture: texture001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    buffer006.destroy()
    
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_bundle_encoder000.finish();
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    
    buffer0011.destroy()
    render_bundle_encoder102.finish();
    render_bundle_encoder003.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder1011.insertDebugMarker("marker");
    texture100.destroy();
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    render_pass_encoder0001.setPipeline(render_pipeline003);
    compute_pass_encoder1000.popDebugGroup()
    device00.pushErrorScope("out-of-memory");
    buffer008.destroy()
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group102);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer103.destroy()
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer1012.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    command_encoder102.copyBufferToBuffer(
        buffer1011,
        0,
        buffer1013,
        0,
        400
    );
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder1011.setVertexBuffer(0, buffer106);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1001.setBindGroup(0, bind_group103);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1001.setVertexBuffer(0, buffer1011);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.setVertexBuffer(0, buffer0013);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0015, 0);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer104);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group006);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.draw(3);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder0000.setVertexBuffer(0, buffer0012);
    render_pass_encoder1010.end();
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.end();
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0030.end();
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
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group007);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.draw(3);
    command_encoder003.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.end();
    compute_pass_encoder0020.end();
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.setVertexBuffer(0, buffer0014);
    render_pass_encoder0001.drawIndirect(buffer0013, 0);
    const command_buffer003 = command_encoder003.finish();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder0030.end();
    command_encoder000.popDebugGroup()
    render_pass_encoder0000.end();
    render_pass_encoder1010.popDebugGroup();
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.setVertexBuffer(0, buffer1011);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.endOcclusionQuery()
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder0001.end();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group009);
    compute_pass_encoder0010.end();
    render_pass_encoder1001.end();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1001.end();
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder1000.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer003, ]);
    const command_buffer000 = command_encoder000.finish();
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0010);
    render_pass_encoder0030.draw(3);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1001.popDebugGroup();
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    compute_pass_encoder0020.end();
    render_pass_encoder1001.end();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder1001.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0020.end();
    render_pass_encoder1000.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
}