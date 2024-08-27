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
    
    
    const array0 = new Float32Array([0.0, 0.75, -0.5, 1.0, -1.0, -0.5, 0.0, 0.5, -0.25, 0.0, 0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.75, -1.0, -0.75, 0.5, 0.0, -0.5, 0.0, -0.75, -0.5, 0.5, -0.25, 1.0, 0.75, 0.5, -0.75, 0.25, 0.5, 0.25, 1.0, 0.75, -0.5, -0.5, 0.5, 0.75, 0.75, 0.0, -0.5, -0.25, -0.25, 0.75, -0.5, 0.75, 0.25, -1.0, 0.0, -1.0, 1.0, 1.0, 1.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.25, -0.5, -0.25, -0.75, -1.0, 1.0, -0.75, 1.0, -0.25, 0.25, 0.5, 0.5, 0.5, 0.0, -1.0, -1.0, 0.5, 1.0, 1.0, -0.5, -1.0, -0.5, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.5, -0.25, 0.25, 0.5, -0.5, 1.0, -0.25, -0.75, 0.0, 0.5, -0.25, ]);
    
    const array1 = new Float32Array([-0.5, -1.0, 0.5, 1.0, -0.75, 0.75, 0.75, 1.0, -1.0, 0.5, -0.75, 0.25, -0.25, -0.5, 1.0, 0.0, 0.0, -0.25, -0.75, 0.5, 0.0, 0.5, -0.75, 0.25, -0.5, 0.75, -0.5, -0.75, 1.0, 1.0, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, -0.5, 0.25, 1.0, -1.0, 0.5, 0.5, 0.0, 0.5, -0.75, -0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, 0.25, -1.0, -0.5, -0.5, 0.5, -0.5, 0.25, -0.75, 0.0, 1.0, 1.0, 0.75, 0.0, 0.0, -1.0, -0.25, 0.0, 0.5, -0.5, 0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 0.25, -0.5, 1.0, -0.25, -1.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.75, -0.5, 1.0, -0.25, 0.0, 0.5, 0.5, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, 0.5, -0.25, -0.5, 0.0, 0.5, -0.25, 0.75, 0.25, 1.0, 0.5, 0.5, 0.75, -1.0, 0.5, 0.25, -0.5, 0.0, 0.75, 0.5, -0.25, 0.5, -1.0, -0.5, 0.0, -0.25, -0.5, -0.75, -0.25, -0.75, -0.75, -0.25, 0.25, 0.25, -1.0, 0.25, -1.0, 0.5, -0.75, -0.25, -0.5, -0.75, -0.25, -0.75, 0.5, -0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 0.0, 1.0, 1.0, 1.0, 0.75, 0.75, 0.25, -0.75, 1.0, 0.75, -0.75, 1.0, 0.25, -0.25, 0.75, -1.0, 0.0, 1.0, 0.25, -0.5, -1.0, 0.75, 0.0, 0.0, -0.25, -1.0, 1.0, 0.75, 0.25, 0.75, -0.75, 1.0, 0.0, 0.25, 0.75, 1.0, 0.75, -0.5, -1.0, 0.25, 0.75, -0.5, -1.0, 0.5, 0.25, 0.0, -0.5, 1.0, 0.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    
    
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    device00.pushErrorScope("validation");
    texture000.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    command_encoder102.pushDebugGroup("mygroupmarker")
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array3 = new Float32Array([-0.25, -1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.25, -0.25, -1.0, 0.25, -1.0, -0.5, -1.0, 0.5, 1.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.75, 0.25, -0.25, -1.0, 0.5, 0.25, 1.0, 1.0, 0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 0.75, -0.75, 0.75, -1.0, -1.0, 0.0, 0.5, -0.5, 1.0, -0.5, 0.25, -0.5, -1.0, 0.0, -0.25, 1.0, 0.0, 0.0, 1.0, 0.75, -0.75, -0.25, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 0.0, 0.75, 0.0, -0.5, -0.75, 0.0, 0.0, -0.5, 0.25, -0.75, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, -0.5, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, -1.0, 0.0, -0.5, 0.25, 0.0, 0.75, 0.75, 0.75, -0.25, -1.0, -0.25, 0.25, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device00.destroy();
    device10.pushErrorScope("out-of-memory");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder101.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.popDebugGroup();
    
    command_encoder102.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer101 = command_encoder101.finish();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer103 = command_encoder103.finish();
    const array4 = new Float32Array([1.0, -1.0, 0.25, -0.25, -0.25, 0.75, 0.0, 0.0, 0.5, -0.75, -0.5, 0.0, -0.75, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, -0.25, 0.25, 0.25, -1.0, 0.75, 0.5, 0.25, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, -0.25, -0.75, 0.25, -0.75, 0.0, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, 1.0, 1.0, -0.75, -0.75, -0.5, 0.75, 1.0, 0.25, -1.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.0, -0.75, -1.0, 0.75, 0.0, 0.25, -0.5, -0.25, -0.5, -1.0, -0.75, 1.0, -0.5, -1.0, -0.5, 0.0, 0.5, 0.5, -0.5, 0.75, -0.75, -1.0, 0.75, -0.75, 0.75, 0.5, 0.0, 0.75, 0.75, 1.0, -0.5, 1.0, 1.0, -0.5, 0.75, 0.5, 1.0, -0.5, 0.5, 0.25, -0.5, 0.5, 0.0, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture100.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const array5 = new Float32Array([0.0, -0.75, -0.25, 1.0, -0.25, -0.25, 0.75, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, -0.5, 0.75, -0.5, 0.75, 0.5, -1.0, -1.0, 1.0, 0.0, -0.5, 0.75, -0.25, 0.0, 0.25, -0.75, -0.25, -0.25, 0.0, 0.25, 0.75, -0.5, -0.25, 0.75, 0.25, 0.0, 0.75, -0.5, 0.25, 0.75, 1.0, -1.0, -0.25, 0.0, 1.0, -0.5, -0.75, 0.25, 0.5, 0.75, -0.75, -0.25, 0.5, -0.5, 0.0, 0.25, 0.25, -0.5, 0.0, 1.0, 1.0, -0.75, -0.5, -0.5, -0.5, 1.0, 1.0, 0.0, -0.75, -0.25, 0.0, -1.0, 0.5, 1.0, -1.0, -0.75, 0.0, -0.25, -0.5, 0.0, 0.75, -0.75, 0.0, -0.5, -0.75, 0.0, 0.25, -0.25, 0.25, -0.5, -0.5, -0.25, -0.75, 0.5, -0.25, 0.75, 0.75, 0.25, ]);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("out-of-memory");
    buffer100.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder1000.popDebugGroup()
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const array6 = new Float32Array([-0.25, 0.5, 0.0, -0.5, 0.0, 0.25, -1.0, -0.5, 0.25, -1.0, 0.25, -0.25, 0.25, 0.25, -0.75, -1.0, 0.75, 1.0, -1.0, 0.0, 0.25, 0.0, -1.0, -0.25, 0.75, 0.75, 0.5, -1.0, -0.75, -0.25, 0.75, -1.0, 0.5, -0.5, -0.5, 1.0, 0.0, 0.0, -0.5, 0.25, 0.75, -0.5, -1.0, 1.0, 0.75, -0.75, 0.75, 0.25, 0.25, -0.75, -1.0, -0.25, -1.0, 0.5, 0.0, -0.75, 0.0, -1.0, -0.75, 0.0, -0.75, -1.0, 1.0, 0.0, -1.0, -0.5, 0.0, 0.25, 0.5, 0.25, 1.0, 1.0, -0.5, 0.5, -0.25, 1.0, 1.0, 0.25, 0.5, -0.5, 0.25, 0.75, -0.5, -0.5, -0.75, 0.0, 0.0, 1.0, 0.0, -0.5, -1.0, -0.5, -0.75, 0.0, 0.0, -0.25, -0.75, -0.75, 0.5, 0.75, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture201.destroy();
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    query103.destroy()
    texture200.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder1021.pushDebugGroup("group_marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder101.setPipeline(render_pipeline102);
    query101.destroy()
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    buffer200.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1021.setPipeline(compute_pipeline101);
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
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder201.insertDebugMarker("mymarker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    
    query103.destroy()
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    
    query101.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query101.destroy()
    buffer101.destroy()
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
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    query102.destroy()
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    device20.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    buffer200.destroy()
    render_bundle_encoder102.popDebugGroup();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1021.popDebugGroup()
    
    compute_pass_encoder2010.popDebugGroup()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer104.destroy()
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer105.destroy()
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_bundle_encoder102.popDebugGroup();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    buffer201.destroy()
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1021.insertDebugMarker("marker")
    
    render_bundle_encoder100.setVertexBuffer(0, buffer103);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder1021.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query200.destroy()
    query102.destroy()
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    query201.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder105.clearBuffer(buffer106);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_buffer105 = command_encoder105.finish();
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query104.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    query202.destroy()
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    device20.pushErrorScope("validation");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer103,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    query101.destroy()
    texture202.destroy();
    render_bundle_encoder100.drawIndirect(buffer104, 0);
    render_bundle_encoder101.setVertexBuffer(0, buffer104);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    buffer107.destroy()
    buffer103.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query103.destroy()
    query101.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder1000.popDebugGroup()
    
    compute_pass_encoder1021.pushDebugGroup("group_marker")
    query100.destroy()
    buffer108.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query101.destroy()
    render_bundle_encoder200.popDebugGroup();
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    
    buffer102.destroy()
    query202.destroy()
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    command_encoder104.insertDebugMarker("mymarker");
    query200.destroy()
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group103);
    render_bundle_encoder101.draw(3);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    compute_pass_encoder2010.setPipeline(compute_pipeline204);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
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
    
    render_bundle_encoder101.popDebugGroup();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group104);
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer108,
        0,
        400
    );
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    buffer106.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1014, 0);
    device10.queue.writeBuffer(buffer1014, 0, array4, 0, array4.length);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query101.destroy()
    command_encoder104.copyBufferToBuffer(
        buffer104,
        0,
        buffer102,
        0,
        400
    );
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer1014.destroy()
    render_bundle_encoder101.drawIndirect(buffer100, 0);
    render_bundle_encoder101.draw(3);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer1013,
        0
    )
    compute_pass_encoder2000.setPipeline(compute_pipeline207);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer1012,
        0
    )
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder106.copyBufferToBuffer(
        buffer105,
        0,
        buffer1012,
        0,
        400
    );
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    command_encoder104.clearBuffer(buffer107);
    
    
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer1012,
        0
    )
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    command_encoder102.copyBufferToBuffer(
        buffer1013,
        0,
        buffer1011,
        0,
        400
    );
    command_encoder104.resolveQuerySet(
        query105,
        0,
        32,
        buffer108,
        0
    )
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer109.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    command_encoder106.pushDebugGroup("mygroupmarker")
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder202.popDebugGroup();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    
    
    
    command_encoder104.copyBufferToBuffer(
        buffer1010,
        0,
        buffer104,
        0,
        400
    );
    query201.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    query105.destroy()
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer1012,
        0
    )
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    buffer1011.destroy()
    
    query101.destroy()
    command_encoder107.insertDebugMarker("mymarker");
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer1015,
        0
    )
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    query102.destroy()
    buffer1016.destroy()
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer1016,
        0
    )
    render_bundle_encoder100.finish();
    command_encoder106.copyBufferToBuffer(
        buffer100,
        0,
        buffer104,
        0,
        400
    );
    
    
    command_encoder201.clearBuffer(buffer206);
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder107.copyBufferToBuffer(
        buffer103,
        0,
        buffer1016,
        0,
        400
    );
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.copyBufferToBuffer(
        buffer1010,
        0,
        buffer1013,
        0,
        400
    );
    render_bundle_encoder202.setVertexBuffer(0, buffer200);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder202.drawIndirect(buffer200, 0);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    query106.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer108,
        0
    )
    command_encoder104.copyBufferToBuffer(
        buffer1010,
        0,
        buffer1011,
        0,
        400
    );
    query102.destroy()
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
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer1016,
        0
    )
    command_encoder107.resolveQuerySet(
        query103,
        0,
        32,
        buffer1012,
        0
    )
    
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer1014,
        0
    )
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeBuffer(buffer1017, 0, array1, 0, array1.length);
    query101.destroy()
    buffer206.destroy()
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer1012,
        0
    )
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    command_encoder100.resolveQuerySet(
        query105,
        0,
        32,
        buffer105,
        0
    )
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    command_encoder106.clearBuffer(buffer1011);
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer209, 0);
    const command_buffer107 = command_encoder107.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer200, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1021, 0);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1021.end();
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group107);
    compute_pass_encoder1021.end();
    compute_pass_encoder1000.end();
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    compute_pass_encoder1020.popDebugGroup()
    command_encoder100.popDebugGroup()
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    device10.queue.submit([command_buffer104, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2012, 0);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2013, 0);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    compute_pass_encoder2000.end();
    compute_pass_encoder1020.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group109);
    command_encoder106.popDebugGroup()
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1010);
    device10.queue.submit([command_buffer101, ]);
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    const command_buffer201 = command_encoder201.finish();
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder1020.popDebugGroup()
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group204);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group1011);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1021.end();
    compute_pass_encoder1020.end();
    device20.queue.submit([]);
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([]);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1032, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group1012);
    device20.queue.submit([]);
    compute_pass_encoder1021.popDebugGroup()
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer107, ]);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer103, ]);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1013);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group206);
    device00.queue.submit([]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2020, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2021, 0);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2022, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2022, 0);
    device10.queue.submit([]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2023, 0);
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1014);
    compute_pass_encoder1000.end();
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
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
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1015);
}