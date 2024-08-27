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
    
    const array0 = new Float32Array([-1.0, -0.5, -0.5, 0.0, 1.0, -0.5, 0.5, -0.75, 0.25, 1.0, 0.75, 0.75, -0.5, -1.0, 0.5, -0.75, 1.0, -0.75, -0.25, 0.0, 0.5, -0.25, -0.5, -1.0, 0.5, 0.75, 0.0, -0.25, -0.75, -0.75, 1.0, 1.0, -0.75, -1.0, -0.25, 0.25, 0.25, -0.75, 0.0, 0.5, 0.5, 0.5, 1.0, -0.25, 0.5, -0.5, 0.75, 0.75, -0.25, 0.0, 0.25, -0.25, -0.5, -0.75, 0.0, -0.25, 0.75, 0.75, -0.25, 0.75, 0.75, 0.5, -0.5, -1.0, 0.0, 1.0, 1.0, 0.75, -0.75, -0.75, 0.0, -0.25, 0.25, -1.0, 1.0, -0.75, -0.5, 0.0, 0.75, 0.25, 1.0, 0.25, 1.0, 1.0, -0.25, 0.5, -0.25, -1.0, -1.0, 0.25, 0.5, -1.0, 1.0, -0.5, 0.0, 1.0, 0.75, 1.0, -1.0, -0.75, ]);
    
    
    
    const array1 = new Float32Array([0.5, -1.0, 1.0, 0.75, 1.0, 1.0, -0.5, 1.0, -0.25, -0.25, 1.0, 0.5, -1.0, -1.0, 1.0, -0.5, -1.0, 0.75, 1.0, 0.75, -0.5, -0.5, 0.25, -0.75, -0.25, 0.75, 0.0, 1.0, -0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 1.0, 0.5, 0.25, -1.0, -0.5, -0.75, -1.0, -0.75, 0.0, -0.25, -0.75, 0.5, 0.0, 0.75, 1.0, 0.75, -1.0, -0.75, -0.25, 0.75, -0.25, -0.75, -0.75, -0.75, -1.0, 1.0, 0.75, -0.75, -0.75, -1.0, 0.25, 0.0, 0.75, -1.0, 0.5, 0.5, 0.25, -0.25, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 0.25, 0.5, 0.75, -1.0, 0.25, 0.0, 0.25, 0.0, 1.0, -0.5, 1.0, 1.0, 0.5, 0.75, -0.25, 0.75, -1.0, 1.0, -0.5, 0.75, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array2 = new Float32Array([-1.0, 0.0, -0.25, 0.75, 0.75, 0.5, 0.75, 0.25, 0.0, 0.25, 0.5, 0.0, -0.75, 0.25, 1.0, 0.5, 0.75, -0.25, 1.0, 0.5, 0.75, 1.0, 1.0, 0.0, 0.5, 0.5, -0.75, -1.0, 0.75, -1.0, 0.25, 1.0, -0.75, 1.0, 0.5, 0.0, -0.25, 0.5, -0.5, 1.0, 0.25, 0.0, 0.5, 1.0, -1.0, 0.75, 1.0, 1.0, -0.75, 0.5, 0.5, 1.0, 0.25, -0.5, -1.0, 0.25, 0.5, -0.75, -1.0, 1.0, -0.75, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -0.75, -0.25, 0.25, 0.0, -0.25, 0.5, 0.75, -0.5, 0.75, -0.5, -0.75, -0.5, 0.75, -0.25, -0.5, 0.25, 0.0, 1.0, -0.5, -1.0, -0.75, 0.25, -0.5, 0.75, -0.75, 0.0, -0.75, 0.25, -1.0, 0.5, -0.75, 0.5, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.0, 0.5, 0.75, -0.75, 1.0, -0.25, 0.25, -0.5, 0.25, -0.25, -0.75, 0.25, -1.0, 0.75, 1.0, 1.0, -0.25, 0.5, 0.5, -0.75, -1.0, 0.75, -1.0, 1.0, -0.5, -1.0, -1.0, 0.25, 0.0, -0.75, -0.25, -0.75, 0.0, -0.25, 0.25, 0.0, -0.75, 0.0, 0.75, 1.0, 0.5, -0.75, 0.5, 0.25, -1.0, 0.75, -1.0, -0.5, -1.0, -0.5, 0.75, -0.25, 1.0, 0.25, -0.75, 1.0, -1.0, 1.0, 0.25, 0.25, 1.0, -0.5, -0.5, 0.5, 0.75, -1.0, -0.5, 0.5, 0.25, 0.5, -0.25, 0.5, 0.0, 0.0, 1.0, -0.75, 0.5, -1.0, 1.0, -1.0, 1.0, 0.25, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -0.5, -0.75, -0.5, -0.25, 0.0, -0.5, 1.0, -1.0, 0.5, -0.75, -1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.75, -0.75, 0.0, -1.0, -0.75, -0.75, -0.75, -0.25, -1.0, 0.25, 0.75, -0.75, 0.75, 0.5, -1.0, 0.25, -0.75, 0.5, 0.25, -0.25, 0.5, 1.0, 0.75, -0.5, 0.25, 0.25, 0.5, 0.5, 0.75, -0.75, -0.25, -0.75, 0.0, 0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, -0.75, 0.75, 1.0, 0.0, -0.25, 0.0, -0.25, 1.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.5, -0.25, -0.25, 0.25, 0.75, 0.75, -0.75, 0.25, 0.25, -1.0, 1.0, 0.75, 0.25, 1.0, -0.5, -0.25, 0.75, 0.5, 0.75, 1.0, -0.75, 0.0, 0.75, 0.0, -0.25, -0.75, 0.75, -1.0, 0.75, 1.0, -0.5, -1.0, -1.0, -0.25, -0.75, -0.75, 0.25, 0.5, 0.5, -1.0, -0.25, 1.0, -0.5, 0.25, 1.0, 0.0, 0.5, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder102.popDebugGroup();
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_buffer102 = command_encoder102.finish();
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.submit([]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    device00.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder104.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.pushErrorScope("out-of-memory");
    query100.destroy()
    
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    texture000.destroy();
    
    render_bundle_encoder101.popDebugGroup();
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
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query300.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    const command_buffer105 = command_encoder105.finish();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query002.destroy()
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer100,
        0,
        400
    );
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query300.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    command_encoder106.pushDebugGroup("mygroupmarker")
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder000.popDebugGroup();
    device00.pushErrorScope("internal");
    
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    command_encoder106.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    buffer100.destroy()
    
    command_encoder104.clearBuffer(buffer100);
    command_encoder106.clearBuffer(buffer101);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer300.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
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
    
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    
    
    
    device30.destroy();
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder101.popDebugGroup();
    command_encoder104.clearBuffer(buffer101);
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer103,
        0,
        400
    );
    const command_buffer200 = command_encoder200.finish();
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    render_bundle_encoder101.setVertexBuffer(0, buffer103);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query001.destroy()
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder103.clearBuffer(buffer101);
    buffer103.destroy()
    
    
    buffer002.destroy()
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    command_encoder103.copyBufferToBuffer(
        buffer103,
        0,
        buffer103,
        0,
        400
    );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    query002.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    command_encoder106.insertDebugMarker("mymarker");
    
    command_encoder103.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
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
        occlusionQuerySet: query100
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    
    render_pass_encoder1070.setStencilReference(1);
    command_encoder106.insertDebugMarker("mymarker");
    render_pass_encoder1060.setPipeline(render_pipeline102);
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device20.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder1000.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
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
    
    render_pass_encoder1030.setPipeline(render_pipeline100);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
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

    render_pass_encoder1060.setBindGroup(0, bind_group101);
    render_bundle_encoder101.popDebugGroup();
    
    
    
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    query101.destroy()
    
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer105.destroy()
    render_pass_encoder1040.setStencilReference(1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder1070.setPipeline(render_pipeline103);
    
    device00.pushErrorScope("validation");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1030.setStencilReference(1);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_pass_encoder1040.setStencilReference(1);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group103);
    device30.destroy();
    buffer002.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query100.destroy()
    buffer001.destroy()
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1060.setVertexBuffer(0, buffer102);
    
    
    render_pass_encoder1061.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1010.executeBundles([])
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    device00.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    render_pass_encoder1040.setPipeline(render_pipeline101);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1060.draw(3);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder1061.setPipeline(render_pipeline103);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.setIndexBuffer(buffer108, "uint16");
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1061.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    const array5 = new Float32Array([-0.25, -0.5, -0.25, 0.5, -1.0, -0.5, -0.5, -1.0, 0.5, -0.75, -1.0, -0.5, 0.25, 0.25, -0.25, 0.0, 0.75, 0.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.75, -0.25, 0.25, -0.5, 0.75, 0.75, -0.5, -0.75, 0.0, 1.0, 0.75, -1.0, 0.75, 0.5, -0.75, -1.0, -1.0, 1.0, -0.25, 0.25, 1.0, 0.25, 0.0, -0.25, 1.0, -1.0, -0.25, 0.75, 0.75, 0.25, -0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -0.5, -0.25, 1.0, 0.75, -0.25, 1.0, -0.25, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, 1.0, 0.5, -0.75, -1.0, -0.75, 0.5, -1.0, -0.25, -1.0, 0.75, 1.0, 1.0, -0.25, -1.0, 0.25, -0.5, 0.0, -0.75, 0.0, 0.0, -0.5, 0.5, ]);
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.draw(3);
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder2011.insertDebugMarker("marker")
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.insertDebugMarker("marker");
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    
    render_pass_encoder1061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
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
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1070.insertDebugMarker("marker");
    
    compute_pass_encoder2011.popDebugGroup()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder1080.setPipeline(compute_pipeline101);
    compute_pass_encoder1040.setPipeline(compute_pipeline102);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.25, -0.25, 1.0, 0.5, -0.5, 0.75, 1.0, 1.0, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 1.0, 0.5, 0.25, 0.75, 1.0, 1.0, -0.25, 1.0, 1.0, -0.75, -0.5, -0.5, 0.75, 1.0, -0.5, -1.0, -1.0, -0.5, -1.0, 0.75, 0.5, -0.5, -0.25, -0.75, 0.5, 0.75, -0.5, -1.0, -1.0, 0.5, -1.0, -1.0, 0.0, 1.0, -0.75, -0.75, 1.0, 0.25, 0.0, 0.75, 1.0, 1.0, 0.25, 0.75, -1.0, 1.0, 1.0, 0.0, -1.0, 0.0, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 0.0, -0.5, -0.75, -0.5, -0.5, -0.75, 1.0, 1.0, 0.5, 0.5, 0.0, -0.75, -0.75, -0.5, 0.75, -0.25, -0.75, 0.25, 0.0, 0.0, 1.0, 0.75, 0.5, -1.0, -1.0, 0.0, -1.0, -0.75, 0.75, -0.5, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    command_encoder108.clearBuffer(buffer102);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1070.insertDebugMarker("marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1000.setVertexBuffer(0, buffer1011);
    render_pass_encoder1061.setStencilReference(1);
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setPipeline(render_pipeline102);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
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
    render_bundle_encoder101.finish();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    render_pass_encoder1040.beginOcclusionQuery(0)
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1070.setVertexBuffer(0, buffer104);
    
    render_pass_encoder1070.pushDebugGroup("group_marker");
    
    render_pass_encoder1011.setPipeline(render_pipeline101);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query101
    });
    
    buffer106.destroy()
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer1013,
        0,
        400
    );
    
    render_bundle_encoder102.setVertexBuffer(0, buffer1010);
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query103
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_pass_encoder1000.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.setPipeline(render_pipeline100);
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

    render_pass_encoder1041.setBindGroup(0, bind_group106);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group107);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group108);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    render_pass_encoder1011.setVertexBuffer(0, buffer1019);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.setPipeline(render_pipeline100);
    render_pass_encoder1061.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.setVertexBuffer(0, buffer1021);
    render_pass_encoder1061.setVertexBuffer(0, buffer107);
    render_pass_encoder1061.drawIndirect(buffer105, 0);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    render_pass_encoder1041.setVertexBuffer(0, buffer1014);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group1010);
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1011);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer008, 0);
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    render_pass_encoder1060.draw(3);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
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
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1012);
    render_pass_encoder1040.setVertexBuffer(0, buffer1019);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1060.drawIndirect(buffer1014, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group1013);
    render_pass_encoder1030.setVertexBuffer(0, buffer1023);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1030.end();
    command_encoder103.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1070.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1031, 0);
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1071.setBindGroup(0, bind_group1014);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.setVertexBuffer(0, buffer104);
    compute_pass_encoder1010.end();
    render_pass_encoder1061.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1025, 0);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1041.drawIndirect(buffer1022, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1070.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1011.draw(3);
    const command_buffer107 = command_encoder107.finish();
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer1034, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    const command_buffer108 = command_encoder108.finish();
    render_pass_encoder1071.popDebugGroup();
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
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

    compute_pass_encoder1080.setBindGroup(0, bind_group1015);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2011.popDebugGroup()
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    render_pass_encoder1071.drawIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer108, ]);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1071.popDebugGroup();
    device10.queue.submit([]);
    command_encoder100.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1071.popDebugGroup();
    command_encoder106.popDebugGroup()
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    render_pass_encoder1070.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    device50.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.draw(3);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.end();
    render_pass_encoder1070.drawIndirect(buffer1014, 0);
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1080.setBindGroup(0, bind_group1017);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.end();
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1018);
    render_pass_encoder1010.end();
    render_pass_encoder1070.drawIndirect(buffer1034, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1060.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1040.end();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    compute_pass_encoder1040.end();
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.setIndexBuffer(buffer103, "uint16");
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1019);
    render_pass_encoder1071.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1061.drawIndirect(buffer107, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1011.draw(3);
    command_encoder104.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1070.end();
    render_pass_encoder1070.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    device10.queue.submit([command_buffer108, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1061.drawIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([]);
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1027, 0);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    device50.queue.submit([]);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1040.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1070.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1041, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1061.drawIndirect(buffer105, 0);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1040.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1071.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1041.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.end();
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
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1080.setBindGroup(0, bind_group1020);
    render_pass_encoder1060.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1070.drawIndirect(buffer1027, 0);
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1011, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1012, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1070.drawIndirect(buffer1034, 0);
    render_pass_encoder1060.drawIndirect(buffer1030, 0);
    render_pass_encoder1071.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1071.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
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
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1013, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1070.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1061.setIndexBuffer(buffer109, "uint16");
    device00.queue.submit([command_buffer000, ]);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1022);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer108, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1034, 0);
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1023);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1024);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.drawIndirect(buffer1010, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1028, 0);
    render_pass_encoder1071.drawIndirect(buffer1034, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    device20.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1070.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1070.end();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1061.endOcclusionQuery()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1025);
    render_pass_encoder1030.setIndexBuffer(buffer1049, "uint16");
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
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1026);
    render_pass_encoder1041.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1040.end();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    device50.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1021, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0017, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer106, ]);
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
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1027);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1017, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer106, ]);
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
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1080.setBindGroup(0, bind_group1028);
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1058, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1039, "uint16");
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
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
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
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1080.setBindGroup(0, bind_group1029);
    render_pass_encoder1061.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1041.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1035, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer1065, 0);
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1030);
    render_pass_encoder1061.drawIndirect(buffer1013, 0);
    device20.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer1042, "uint16");
    device50.queue.submit([]);
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndirect(buffer1062, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1049, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndirect(buffer105, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0020, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0020, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1011.popDebugGroup();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer1068, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1031);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1010.drawIndirect(buffer1068, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndirect(buffer1025, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1072, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1072, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1060.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0021, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1010.end();
    device50.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1034, 0);
    render_pass_encoder1070.drawIndirect(buffer1066, 0);
    render_pass_encoder1060.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1067, 0);
    compute_pass_encoder1080.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1066, 0);
    render_pass_encoder1000.popDebugGroup();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1073, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer1073, 0);
    render_pass_encoder1070.drawIndirect(buffer1034, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.drawIndirect(buffer1073, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.popDebugGroup();
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1032);
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer108, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1071.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1072, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1041.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1041.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1071.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1035, "uint16");
    compute_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1061, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1068, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer100, command_buffer104, command_buffer105, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1037, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1061, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1076, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1076, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1076, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1011.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1077, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1077, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1000.end();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1077, 0);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndirect(buffer1074, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.end();
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1033);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1071.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1070.drawIndirect(buffer1076, 0);
    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1082,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1034);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.drawIndexed(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, command_buffer105, ]);
    render_pass_encoder1011.drawIndexed(3);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer1062, 0);
    render_pass_encoder1041.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1083, 0);
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1035);
    render_pass_encoder1011.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1065, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer1067, 0);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1077, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1079, "uint16");
    device20.queue.submit([]);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1071.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndirect(buffer1062, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1034, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1041.drawIndirect(buffer1076, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1070.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1080.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1010.end();
    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1087,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1036);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    device50.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1029, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer105, ]);
    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1089,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1037);
    device50.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer1072, 0);
    render_pass_encoder1011.drawIndirect(buffer1068, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1076, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1040.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1076, 0);
    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1091,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1038);
    render_pass_encoder1011.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1070.end();
    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1093,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1039);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1086, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1072, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1010.setIndexBuffer(buffer1092, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([]);
    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1095,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1040);
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1097,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1041);
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer102, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1071.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1051, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1081, 0);
    render_pass_encoder1070.drawIndirect(buffer1085, 0);
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder1040.end();
    render_pass_encoder1041.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1039, "uint16");
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
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder1070.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1076, 0);
    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1099,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1042);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1041, "uint16");
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10100, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1073, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer105, command_buffer106, ]);
    render_pass_encoder1061.drawIndirect(buffer1097, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10101, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10101, 0);
    device00.queue.submit([]);
    render_pass_encoder1061.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1098, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1000.drawIndirect(buffer1084, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1070.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder1030.drawIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer106, ]);
    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10103,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1043);
    render_pass_encoder1061.end();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10104, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10104, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndirect(buffer1065, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder1080.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10105, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10105, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder1041.drawIndirect(buffer1028, 0);
    render_pass_encoder1071.drawIndirect(buffer10100, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1068, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    device20.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1011.drawIndirect(buffer10101, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1070.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10106, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10106, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1068, "uint16");
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer107, ]);
    render_pass_encoder1071.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10107, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1061.drawIndirect(buffer10106, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1096, 0);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    compute_pass_encoder1080.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.end();
    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10109,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1044);
    render_pass_encoder1061.drawIndirect(buffer1087, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1011.drawIndirect(buffer1023, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1071, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.drawIndexed(3);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1041.drawIndirect(buffer1087, 0);
    device20.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1015, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1041.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer105, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10110, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10110, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    render_pass_encoder1061.drawIndexed(3);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1041.end();
    device50.queue.submit([]);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1027, 0);
    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10112,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1045);
    render_pass_encoder1071.drawIndirect(buffer10101, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndirect(buffer10106, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1070.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1058, "uint16");
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10104, 0);
    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10114,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1046);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10109, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1072, 0);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer1071, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1061, 0);
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.drawIndirect(buffer10101, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer1072, 0);
    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10116,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1047);
    device20.queue.submit([]);
    render_pass_encoder1030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0032, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.end();
    render_pass_encoder1011.end();
    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10118,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1048);
    render_pass_encoder1040.drawIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10107, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer10113, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10111, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0033, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndirect(buffer1077, 0);
    device10.queue.submit([]);
    device20.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1092, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1041.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1016, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndirect(buffer1021, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1083, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.drawIndirect(buffer1077, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1041.drawIndirect(buffer1072, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    render_pass_encoder1030.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0034, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1076, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.draw(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1062, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer10101, 0);
    render_pass_encoder1070.drawIndirect(buffer1092, 0);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer108, ]);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1076, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1068, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder1040.end();
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1040.drawIndirect(buffer1087, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.drawIndirect(buffer1063, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1011.drawIndirect(buffer10101, 0);
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1060.drawIndirect(buffer10105, 0);
    render_pass_encoder1041.drawIndirect(buffer1072, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1061.drawIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10120,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1049);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1000.drawIndirect(buffer10109, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer10107, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1041, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1071, 0);
    render_pass_encoder1070.drawIndirect(buffer1068, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1071.drawIndirect(buffer10101, 0);
    render_pass_encoder1070.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1041.drawIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1061.drawIndirect(buffer10105, 0);
    device00.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1076, "uint16");
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1000.drawIndirect(buffer1034, 0);
    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10122,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1050);
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1061.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1041.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1041.drawIndirect(buffer1072, 0);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1077, 0);
    device00.queue.submit([]);
    render_pass_encoder1071.popDebugGroup();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10123, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10123, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer100, 0);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1071.drawIndirect(buffer10120, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1092, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1091, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.drawIndirect(buffer1070, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1041.drawIndirect(buffer1092, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1040.end();
    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10125,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1051);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndirect(buffer10122, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder1080.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10127,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1052);
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1070.drawIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1071.drawIndirect(buffer1087, 0);
    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10129,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1053);
    render_pass_encoder1041.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10123, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1070.drawIndirect(buffer1076, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1076, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    render_pass_encoder1070.drawIndirect(buffer1072, 0);
    render_pass_encoder1041.drawIndirect(buffer10119, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1010.setIndexBuffer(buffer1087, "uint16");
    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1054 = device10.createBindGroup({
        label: "bind_group1054",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10131,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1054);
    render_pass_encoder1060.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1055 = device10.createBindGroup({
        label: "bind_group1055",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10133,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1055);
    render_pass_encoder1061.drawIndexedIndirect(buffer10132, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1089, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1075, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10134, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10134, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10134, 0);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder1040.drawIndirect(buffer10101, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1061.drawIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1041.drawIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndirect(buffer1039, 0);
    render_pass_encoder1060.drawIndirect(buffer1077, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1041.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1095, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1071.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10121, 0);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1097, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1072, 0);
    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1056 = device10.createBindGroup({
        label: "bind_group1056",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10135,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10136,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1056);
    render_pass_encoder1000.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1057 = device10.createBindGroup({
        label: "bind_group1057",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10138,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1057);
    render_pass_encoder1010.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndirect(buffer10123, 0);
    render_pass_encoder1030.drawIndirect(buffer1063, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndirect(buffer10108, 0);
    render_pass_encoder1070.drawIndirect(buffer10112, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndirect(buffer10134, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1083, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1071.setIndexBuffer(buffer1048, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10137, "uint16");
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1070.setIndexBuffer(buffer10126, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1074, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    device10.queue.submit([command_buffer101, command_buffer105, command_buffer106, ]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, command_buffer108, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1056, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndirect(buffer1072, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1080.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device00.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1049, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    device50.queue.submit([]);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10139, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10139, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer1054, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10118, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1040.drawIndirect(buffer1097, 0);
    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1058 = device10.createBindGroup({
        label: "bind_group1058",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10141,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1058);
    render_pass_encoder1071.drawIndexedIndirect(buffer10124, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10123, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1000.drawIndexed(3);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10142, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10142, 0);
    render_pass_encoder1071.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer10123, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndirect(buffer10123, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10100, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1070.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10118, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10133, 0);
    compute_pass_encoder1040.end();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer104, command_buffer106, command_buffer108, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1061.drawIndirect(buffer10139, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndirect(buffer10139, 0);
    render_pass_encoder1071.drawIndirect(buffer1077, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndirect(buffer10109, 0);
    render_pass_encoder1000.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1030.drawIndirect(buffer10123, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndirect(buffer10109, 0);
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1041.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder1070.drawIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndirect(buffer1068, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1074, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer1077, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10103, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10124, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1071.drawIndirect(buffer10139, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1072, 0);
    device30.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1011, 0);
    render_pass_encoder1060.drawIndirect(buffer1027, 0);
    render_pass_encoder1061.drawIndirect(buffer1050, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer10131, "uint16");
    render_pass_encoder1000.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10105, 0);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1098, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10143, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10143, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndirect(buffer10104, 0);
    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10145 = device10.createBuffer({
        label: "buffer10145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1059 = device10.createBindGroup({
        label: "bind_group1059",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10145,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1059);
    render_pass_encoder1030.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndirect(buffer10139, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1061.drawIndirect(buffer10111, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.popDebugGroup();
    const buffer10146 = device10.createBuffer({
        label: "buffer10146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10147 = device10.createBuffer({
        label: "buffer10147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1060 = device10.createBindGroup({
        label: "bind_group1060",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10147,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1060);
    render_pass_encoder1061.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1071.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1076, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1071.drawIndirect(buffer1076, 0);
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer10101, 0);
    render_pass_encoder1060.drawIndirect(buffer10123, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1060.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1011.draw(3);
    device20.queue.submit([command_buffer202, ]);
    const buffer10148 = device10.createBuffer({
        label: "buffer10148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10149 = device10.createBuffer({
        label: "buffer10149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1061 = device10.createBindGroup({
        label: "bind_group1061",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10149,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1061);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer10110, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.drawIndirect(buffer1065, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10100, 0);
    const buffer10150 = device10.createBuffer({
        label: "buffer10150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10151 = device10.createBuffer({
        label: "buffer10151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1062 = device10.createBindGroup({
        label: "bind_group1062",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10151,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1062);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer10135, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1077, 0);
    device50.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1070.setIndexBuffer(buffer10144, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1066, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.drawIndirect(buffer10105, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1061.drawIndirect(buffer1040, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1040.drawIndirect(buffer10134, 0);
    render_pass_encoder1061.drawIndirect(buffer10134, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.end();
    render_pass_encoder1061.drawIndirect(buffer10142, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1000.popDebugGroup();
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    render_pass_encoder1030.drawIndirect(buffer10108, 0);
    render_pass_encoder1070.drawIndirect(buffer10100, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndirect(buffer1072, 0);
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10105, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1080, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1071.drawIndirect(buffer10106, 0);
    render_pass_encoder1000.drawIndirect(buffer10134, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10152 = device10.createBuffer({
        label: "buffer10152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10152, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10152, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1070.drawIndirect(buffer1058, 0);
    render_pass_encoder1071.end();
    compute_pass_encoder0000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    const buffer10153 = device10.createBuffer({
        label: "buffer10153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10154 = device10.createBuffer({
        label: "buffer10154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1063 = device10.createBindGroup({
        label: "bind_group1063",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10154,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1063);
    render_pass_encoder1061.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10139, 0);
    const buffer10155 = device10.createBuffer({
        label: "buffer10155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10156 = device10.createBuffer({
        label: "buffer10156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1064 = device10.createBindGroup({
        label: "bind_group1064",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10156,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1064);
    render_pass_encoder1041.drawIndirect(buffer10123, 0);
    render_pass_encoder1071.drawIndirect(buffer10108, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1058, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder1040.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1041.drawIndirect(buffer10142, 0);
    render_pass_encoder1060.end();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10100, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer10133, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10110, 0);
    render_pass_encoder1011.drawIndirect(buffer1068, 0);
    const buffer10157 = device10.createBuffer({
        label: "buffer10157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10158 = device10.createBuffer({
        label: "buffer10158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1065 = device10.createBindGroup({
        label: "bind_group1065",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10158,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1065);
    render_pass_encoder1011.drawIndirect(buffer10143, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1076, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1041.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10136, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1011.drawIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1068, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10159 = device10.createBuffer({
        label: "buffer10159",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10159, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10159, 0);
    render_pass_encoder1030.drawIndirect(buffer10100, 0);
    render_pass_encoder1041.drawIndirect(buffer10123, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10160 = device10.createBuffer({
        label: "buffer10160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10160, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10160, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10139, 0);
    device50.queue.submit([]);
    render_pass_encoder1070.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer10143, 0);
    const buffer10161 = device10.createBuffer({
        label: "buffer10161",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10162 = device10.createBuffer({
        label: "buffer10162",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1066 = device10.createBindGroup({
        label: "bind_group1066",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10161,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10162,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1066);
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10145, 0);
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1061.drawIndirect(buffer10106, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer10139, 0);
    const buffer10163 = device10.createBuffer({
        label: "buffer10163",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10164 = device10.createBuffer({
        label: "buffer10164",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1067 = device10.createBindGroup({
        label: "bind_group1067",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10163,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10164,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1067);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    device30.queue.submit([]);
    render_pass_encoder1061.drawIndirect(buffer10139, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndirect(buffer1076, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer10104, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer10156, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer101, command_buffer104, command_buffer107, command_buffer108, ]);
    render_pass_encoder1061.drawIndirect(buffer10101, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1071.end();
    compute_pass_encoder2011.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1085, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer10100, "uint16");
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1071, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0041, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10161, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1010.drawIndirect(buffer10159, 0);
    render_pass_encoder1040.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1071.drawIndirect(buffer10106, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10121, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    const buffer10165 = device10.createBuffer({
        label: "buffer10165",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10166 = device10.createBuffer({
        label: "buffer10166",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1068 = device10.createBindGroup({
        label: "bind_group1068",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10165,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10166,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1068);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10139, 0);
    render_pass_encoder1000.end();
    const buffer10167 = device10.createBuffer({
        label: "buffer10167",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10168 = device10.createBuffer({
        label: "buffer10168",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1069 = device10.createBindGroup({
        label: "bind_group1069",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10167,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10168,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1069);
    render_pass_encoder1030.setIndexBuffer(buffer10106, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndirect(buffer1072, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    device20.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1088, 0);
    render_pass_encoder1011.drawIndirect(buffer10160, 0);
    render_pass_encoder1071.drawIndirect(buffer10105, 0);
    render_pass_encoder1011.drawIndirect(buffer10104, 0);
    render_pass_encoder1071.drawIndirect(buffer1047, 0);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10100, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer10123, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder1011.end();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1010.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10169 = device10.createBuffer({
        label: "buffer10169",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10169, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10169, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1071.end();
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer10123, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndirect(buffer1057, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1072, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1041.drawIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1041.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1071.drawIndirect(buffer10106, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10164, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1085, 0);
    compute_pass_encoder1080.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1077, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0045, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1051, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer10127, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1060.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndirect(buffer1065, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10156, 0);
    render_pass_encoder1030.drawIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10142, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10152, 0);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    device20.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndirect(buffer10123, 0);
    render_pass_encoder1070.drawIndirect(buffer10139, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndirect(buffer1071, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndirect(buffer10119, 0);
    render_pass_encoder1071.drawIndirect(buffer10106, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1037, "uint16");
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1010.setIndexBuffer(buffer10140, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1061.drawIndirect(buffer10106, 0);
    device10.queue.submit([command_buffer105, ]);
    const buffer10170 = device10.createBuffer({
        label: "buffer10170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10171 = device10.createBuffer({
        label: "buffer10171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1070 = device10.createBindGroup({
        label: "bind_group1070",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10171,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1070);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1010.drawIndirect(buffer10159, 0);
    render_pass_encoder1061.drawIndirect(buffer10149, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1071.drawIndirect(buffer10142, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1070.drawIndirect(buffer10142, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1041.drawIndirect(buffer10160, 0);
    render_pass_encoder1061.drawIndirect(buffer1078, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1083, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1070.setIndexBuffer(buffer10171, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1073, 0);
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    const buffer10172 = device10.createBuffer({
        label: "buffer10172",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10173 = device10.createBuffer({
        label: "buffer10173",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1071 = device10.createBindGroup({
        label: "bind_group1071",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10172,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10173,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1071);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1030.setIndexBuffer(buffer10170, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0048, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1037, "uint16");
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    compute_pass_encoder1080.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1070.drawIndirect(buffer1086, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer1077, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10166, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1010.drawIndirect(buffer10100, 0);
    render_pass_encoder1040.drawIndirect(buffer10143, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10136, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10155, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10106, 0);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1060.end();
    render_pass_encoder1070.end();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer10169, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1034, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10174 = device10.createBuffer({
        label: "buffer10174",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10174, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10174, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10100, 0);
    render_pass_encoder1071.drawIndirect(buffer1090, 0);
    render_pass_encoder1041.drawIndirect(buffer10105, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1041.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10159, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1052, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.end();
    const buffer10175 = device10.createBuffer({
        label: "buffer10175",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10176 = device10.createBuffer({
        label: "buffer10176",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1072 = device10.createBindGroup({
        label: "bind_group1072",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10175,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10176,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1072);
    render_pass_encoder1040.drawIndirect(buffer10152, 0);
    device50.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10169, 0);
    const buffer10177 = device10.createBuffer({
        label: "buffer10177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10178 = device10.createBuffer({
        label: "buffer10178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1073 = device10.createBindGroup({
        label: "bind_group1073",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10178,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1073);
    const buffer10179 = device10.createBuffer({
        label: "buffer10179",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10180 = device10.createBuffer({
        label: "buffer10180",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1074 = device10.createBindGroup({
        label: "bind_group1074",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10179,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10180,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1074);
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer10152, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10162, 0);
    render_pass_encoder1040.drawIndirect(buffer1072, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10121, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.drawIndirect(buffer10160, 0);
    render_pass_encoder1041.end();
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer1072, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1065, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1040.setIndexBuffer(buffer10162, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10105, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    const buffer10181 = device10.createBuffer({
        label: "buffer10181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10182 = device10.createBuffer({
        label: "buffer10182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1075 = device10.createBindGroup({
        label: "bind_group1075",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10182,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1075);
    render_pass_encoder1070.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1040.drawIndirect(buffer1072, 0);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10117, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder1010.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1060.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1060.end();
    render_pass_encoder1011.end();
    render_pass_encoder1010.setIndexBuffer(buffer10102, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10139, 0);
    render_pass_encoder1041.drawIndirect(buffer1086, 0);
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    render_pass_encoder1000.drawIndirect(buffer10142, 0);
    compute_pass_encoder1080.popDebugGroup()
    device50.queue.submit([]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10183 = device10.createBuffer({
        label: "buffer10183",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10183, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10183, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10110, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10106, 0);
    const buffer10184 = device10.createBuffer({
        label: "buffer10184",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10185 = device10.createBuffer({
        label: "buffer10185",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1076 = device10.createBindGroup({
        label: "bind_group1076",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10184,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10185,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1076);
    render_pass_encoder1070.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10156, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10158, 0);
    const buffer10186 = device10.createBuffer({
        label: "buffer10186",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10187 = device10.createBuffer({
        label: "buffer10187",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1077 = device10.createBindGroup({
        label: "bind_group1077",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10186,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10187,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1077);
    render_pass_encoder1011.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer10123, 0);
    render_pass_encoder1010.drawIndirect(buffer10132, 0);
    render_pass_encoder1040.drawIndirect(buffer1047, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10188 = device10.createBuffer({
        label: "buffer10188",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10188, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10188, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1041.drawIndirect(buffer10152, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10159, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0054, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10173, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndirect(buffer1073, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10152, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndirect(buffer10185, 0);
    device20.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1040.popDebugGroup();
    const buffer10189 = device10.createBuffer({
        label: "buffer10189",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10190 = device10.createBuffer({
        label: "buffer10190",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1078 = device10.createBindGroup({
        label: "bind_group1078",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10189,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10190,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1078);
    render_pass_encoder1030.drawIndirect(buffer10142, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10174, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer10103, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10142, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1000.drawIndirect(buffer1085, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1041.drawIndirect(buffer10174, 0);
    render_pass_encoder1041.drawIndirect(buffer10173, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10106, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10123, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1040.drawIndirect(buffer10159, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10106, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndirect(buffer10137, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10159, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer1092, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1077, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10170, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1070.drawIndirect(buffer10169, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10169, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10122, "uint16");
    device10.queue.submit([command_buffer100, command_buffer106, command_buffer107, ]);
    render_pass_encoder1010.drawIndirect(buffer10106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1040.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10163, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer10154, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10143, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10134, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1000.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10165, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndirect(buffer1049, 0);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    device50.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndirect(buffer10105, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1014, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10104, 0);
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer107, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndirect(buffer1032, 0);
    render_pass_encoder1010.popDebugGroup();
    const buffer10191 = device10.createBuffer({
        label: "buffer10191",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10192 = device10.createBuffer({
        label: "buffer10192",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1079 = device10.createBindGroup({
        label: "bind_group1079",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10191,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10192,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1079);
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10115, "uint16");
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10193 = device10.createBuffer({
        label: "buffer10193",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10193, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10193, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer10106, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10164, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndirect(buffer1073, 0);
    render_pass_encoder1071.drawIndirect(buffer10174, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10135, "uint16");
    const buffer10194 = device10.createBuffer({
        label: "buffer10194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10195 = device10.createBuffer({
        label: "buffer10195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1080 = device10.createBindGroup({
        label: "bind_group1080",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10195,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1080);
    render_pass_encoder1071.drawIndexedIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndirect(buffer10142, 0);
    render_pass_encoder1070.drawIndirect(buffer10104, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer10159, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndirect(buffer1095, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10159, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1071.drawIndirect(buffer10123, 0);
    render_pass_encoder1070.drawIndirect(buffer10143, 0);
    render_pass_encoder1000.drawIndirect(buffer1093, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10188, 0);
    device20.queue.submit([command_buffer202, ]);
    const buffer10196 = device10.createBuffer({
        label: "buffer10196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10197 = device10.createBuffer({
        label: "buffer10197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1081 = device10.createBindGroup({
        label: "bind_group1081",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10197,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1081);
    compute_pass_encoder0000.end();
    render_pass_encoder1040.drawIndirect(buffer10137, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndirect(buffer10113, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1076, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1011.drawIndirect(buffer1070, 0);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10197, "uint16");
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10198 = device10.createBuffer({
        label: "buffer10198",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10198, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10198, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10198, 0);
    const buffer10199 = device10.createBuffer({
        label: "buffer10199",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10200 = device10.createBuffer({
        label: "buffer10200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1082 = device10.createBindGroup({
        label: "bind_group1082",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10199,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10200,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1082);
    render_pass_encoder1071.drawIndirect(buffer1034, 0);
    const buffer10201 = device10.createBuffer({
        label: "buffer10201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10202 = device10.createBuffer({
        label: "buffer10202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1083 = device10.createBindGroup({
        label: "bind_group1083",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10202,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1083);
    render_pass_encoder1010.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndirect(buffer1072, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1080, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndexedIndirect(buffer10162, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10181, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1010.drawIndirect(buffer10159, 0);
    device20.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10203 = device10.createBuffer({
        label: "buffer10203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10203, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10203, 0);
    render_pass_encoder1040.drawIndirect(buffer1057, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10176, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10114, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10139, 0);
    device20.queue.submit([command_buffer202, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10204 = device10.createBuffer({
        label: "buffer10204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10204, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10204, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1070.drawIndirect(buffer10203, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10138, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10173, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer10142, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10174, "uint16");
    const buffer10205 = device10.createBuffer({
        label: "buffer10205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10206 = device10.createBuffer({
        label: "buffer10206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1084 = device10.createBindGroup({
        label: "bind_group1084",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10206,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1084);
    render_pass_encoder1011.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1034, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1041.drawIndirect(buffer10174, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer10143, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10129, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1071, 0);
    device50.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndirect(buffer10104, 0);
    render_pass_encoder1041.drawIndirect(buffer10183, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10120, "uint16");
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1040.drawIndirect(buffer10134, 0);
    const buffer10207 = device10.createBuffer({
        label: "buffer10207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10208 = device10.createBuffer({
        label: "buffer10208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1085 = device10.createBindGroup({
        label: "bind_group1085",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10208,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1085);
    render_pass_encoder1041.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1041.drawIndirect(buffer10152, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10154, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer10108, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndirect(buffer10139, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0057, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer1063, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10143, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer10198, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10209 = device10.createBuffer({
        label: "buffer10209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10209, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10209, 0);
    render_pass_encoder1040.drawIndirect(buffer10203, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10170, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1077, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10143, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10153, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10104, 0);
    const buffer10210 = device10.createBuffer({
        label: "buffer10210",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10211 = device10.createBuffer({
        label: "buffer10211",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1086 = device10.createBindGroup({
        label: "bind_group1086",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10210,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10211,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1086);
    render_pass_encoder1060.drawIndirect(buffer1073, 0);
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1060.drawIndirect(buffer10152, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndirect(buffer10169, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10152, 0);
    compute_pass_encoder1080.popDebugGroup()
    const buffer10212 = device10.createBuffer({
        label: "buffer10212",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10213 = device10.createBuffer({
        label: "buffer10213",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1087 = device10.createBindGroup({
        label: "bind_group1087",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10212,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10213,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1087);
    render_pass_encoder1010.end();
    render_pass_encoder1060.drawIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndirect(buffer10123, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1094, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10209, 0);
    device00.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1041.drawIndirect(buffer10139, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10199, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    render_pass_encoder1000.drawIndirect(buffer1077, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10214 = device10.createBuffer({
        label: "buffer10214",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10214, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10214, 0);
    render_pass_encoder1070.drawIndirect(buffer10100, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10180, 0);
    render_pass_encoder1041.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndirect(buffer10128, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1040.drawIndirect(buffer10134, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10146, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1071.drawIndirect(buffer10101, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer10152, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10193, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1071.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10134, 0);
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10209, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10123, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1071.drawIndirect(buffer10201, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10113, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1058, 0);
    device20.queue.submit([]);
    compute_pass_encoder0000.end();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10215 = device10.createBuffer({
        label: "buffer10215",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10215, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10215, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.drawIndirect(buffer1073, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndirect(buffer1076, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10206, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10198, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10139, 0);
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    device20.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.drawIndirect(buffer10142, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10146, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndirect(buffer10174, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1010.drawIndirect(buffer1089, 0);
    render_pass_encoder1071.drawIndirect(buffer10197, 0);
    render_pass_encoder1041.drawIndirect(buffer10134, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndirect(buffer10101, 0);
    const buffer10216 = device10.createBuffer({
        label: "buffer10216",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10217 = device10.createBuffer({
        label: "buffer10217",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1088 = device10.createBindGroup({
        label: "bind_group1088",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10216,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10217,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1088);
    render_pass_encoder1060.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1061.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer1077, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndirect(buffer10188, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([]);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10218 = device10.createBuffer({
        label: "buffer10218",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10218, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10218, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10190, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10216, 0);
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndirect(buffer10198, 0);
    render_pass_encoder1010.drawIndirect(buffer1075, 0);
    render_pass_encoder1011.drawIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndirect(buffer10198, 0);
    render_pass_encoder1041.drawIndirect(buffer1071, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1041.drawIndirect(buffer10104, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10177, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer10209, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer1076, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1072, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.end();
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer10123, 0);
    render_pass_encoder1070.drawIndirect(buffer1073, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer10218, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.end();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1061.drawIndirect(buffer10107, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1041.drawIndirect(buffer1075, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10215, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1094, "uint16");
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1070.drawIndirect(buffer10175, 0);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10219 = device10.createBuffer({
        label: "buffer10219",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10219, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10219, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10220 = device10.createBuffer({
        label: "buffer10220",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10220, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10220, 0);
    render_pass_encoder1070.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer10217, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1080.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndirect(buffer10134, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10154, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1010.drawIndirect(buffer10142, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer100, command_buffer108, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1041.drawIndirect(buffer10134, 0);
    render_pass_encoder1060.drawIndirect(buffer10134, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.drawIndirect(buffer10139, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10214, 0);
    device10.queue.submit([command_buffer101, command_buffer108, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1071.drawIndirect(buffer10142, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10207, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndirect(buffer10134, 0);
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    device10.queue.submit([command_buffer104, command_buffer108, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndirect(buffer1072, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10221 = device10.createBuffer({
        label: "buffer10221",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10221, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10221, 0);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1011.drawIndirect(buffer10203, 0);
    render_pass_encoder1060.drawIndirect(buffer10215, 0);
    render_pass_encoder1061.drawIndirect(buffer10176, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10208, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1071, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1071.drawIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.drawIndirect(buffer10159, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1077, 0);
    device20.queue.submit([]);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10221, 0);
    device00.queue.submit([command_buffer000, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10222 = device10.createBuffer({
        label: "buffer10222",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10222, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10222, 0);
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndirect(buffer1072, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10171, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10190, 0);
    const buffer10223 = device10.createBuffer({
        label: "buffer10223",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10224 = device10.createBuffer({
        label: "buffer10224",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1089 = device10.createBindGroup({
        label: "bind_group1089",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10223,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10224,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1089);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndirect(buffer10169, 0);
    const buffer10225 = device10.createBuffer({
        label: "buffer10225",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10226 = device10.createBuffer({
        label: "buffer10226",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1090 = device10.createBindGroup({
        label: "bind_group1090",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10225,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10226,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1090);
    device50.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer1074, "uint16");
    device50.queue.submit([]);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10219, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1070.drawIndirect(buffer10183, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10218, 0);
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1070.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer10106, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer10155, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1071.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10227 = device10.createBuffer({
        label: "buffer10227",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10227, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10227, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1045, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10101, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer101, command_buffer105, command_buffer108, ]);
    render_pass_encoder1060.drawIndirect(buffer10123, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1041.drawIndirect(buffer1038, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1011.drawIndirect(buffer10220, 0);
    const buffer10228 = device10.createBuffer({
        label: "buffer10228",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10229 = device10.createBuffer({
        label: "buffer10229",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1091 = device10.createBindGroup({
        label: "bind_group1091",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10228,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10229,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1091);
    device10.queue.submit([command_buffer101, command_buffer105, command_buffer107, ]);
    render_pass_encoder1010.drawIndirect(buffer10214, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10126, "uint16");
    render_pass_encoder1030.end();
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    const buffer10230 = device10.createBuffer({
        label: "buffer10230",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10231 = device10.createBuffer({
        label: "buffer10231",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1092 = device10.createBindGroup({
        label: "bind_group1092",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10230,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10231,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1092);
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndirect(buffer10222, 0);
    render_pass_encoder1061.drawIndirect(buffer10227, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1071.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1070.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer10100, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10163, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10174, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10232 = device10.createBuffer({
        label: "buffer10232",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10232, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10232, 0);
    render_pass_encoder1071.drawIndirect(buffer10221, 0);
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    device10.queue.submit([command_buffer106, command_buffer108, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1070.drawIndirect(buffer10188, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1060.drawIndirect(buffer105, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1041.drawIndirect(buffer10142, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer10100, 0);
    render_pass_encoder1000.drawIndirect(buffer1089, 0);
    render_pass_encoder1011.drawIndirect(buffer10220, 0);
    render_pass_encoder1041.drawIndirect(buffer1077, 0);
    render_pass_encoder1030.drawIndirect(buffer10195, 0);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10203, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1070.drawIndirect(buffer10209, 0);
    render_pass_encoder1011.drawIndirect(buffer10183, 0);
    render_pass_encoder1010.drawIndirect(buffer1059, 0);
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndirect(buffer10232, 0);
    render_pass_encoder1061.drawIndirect(buffer10181, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10134, 0);
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder1041.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1040.drawIndirect(buffer10134, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1011.drawIndirect(buffer1076, 0);
    device20.queue.submit([]);
    render_pass_encoder1070.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10133, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1073, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1061.drawIndirect(buffer10193, 0);
    render_pass_encoder1030.drawIndirect(buffer10114, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10159, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer10191, 0);
    render_pass_encoder1030.drawIndirect(buffer10194, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10218, 0);
    device20.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1061.drawIndirect(buffer10159, 0);
    render_pass_encoder1041.drawIndirect(buffer10152, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10203, 0);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10201, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10227, "uint16");
    compute_pass_encoder1040.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1041.drawIndirect(buffer1071, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    device20.queue.submit([]);
    render_pass_encoder1061.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10106, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10233 = device10.createBuffer({
        label: "buffer10233",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10233, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10233, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10201, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10211, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndirect(buffer10214, 0);
    render_pass_encoder1030.drawIndirect(buffer10214, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10174, 0);
    device50.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1068, 0);
    const buffer10234 = device10.createBuffer({
        label: "buffer10234",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10235 = device10.createBuffer({
        label: "buffer10235",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1093 = device10.createBindGroup({
        label: "bind_group1093",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10234,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10235,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1093);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1061.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10106, 0);
    device00.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer10175, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndirect(buffer10169, 0);
    render_pass_encoder1040.drawIndirect(buffer1073, 0);
    render_pass_encoder1060.drawIndirect(buffer10193, 0);
    render_pass_encoder1071.drawIndirect(buffer10129, 0);
    compute_pass_encoder1040.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer10198, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10107, 0);
    device20.queue.submit([]);
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndirect(buffer10139, 0);
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndirect(buffer10214, 0);
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10222, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10198, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10226, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndirect(buffer10136, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10175, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1061.end();
    render_pass_encoder1041.drawIndirect(buffer10203, 0);
    const buffer10236 = device10.createBuffer({
        label: "buffer10236",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10237 = device10.createBuffer({
        label: "buffer10237",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1094 = device10.createBindGroup({
        label: "bind_group1094",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10236,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10237,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1094);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0065, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1041.drawIndirect(buffer10215, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10211, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1071.drawIndirect(buffer10193, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10108, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer10198, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10218, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1011.drawIndirect(buffer10121, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10212, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1040.drawIndirect(buffer10104, 0);
    device20.queue.submit([]);
    const buffer10238 = device10.createBuffer({
        label: "buffer10238",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10239 = device10.createBuffer({
        label: "buffer10239",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1095 = device10.createBindGroup({
        label: "bind_group1095",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10238,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10239,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1095);
    render_pass_encoder1010.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10115, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10189, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1030.drawIndirect(buffer10100, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndirect(buffer10220, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.setIndexBuffer(buffer10174, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10110, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1071.drawIndirect(buffer10221, 0);
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10105, 0);
    compute_pass_encoder1080.popDebugGroup()
    const buffer10240 = device10.createBuffer({
        label: "buffer10240",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10241 = device10.createBuffer({
        label: "buffer10241",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1096 = device10.createBindGroup({
        label: "bind_group1096",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10240,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10241,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1096);
    render_pass_encoder1040.drawIndexedIndirect(buffer10143, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1061.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10169, 0);
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder1060.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1060.drawIndirect(buffer10203, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1061.setIndexBuffer(buffer10154, "uint16");
    device10.queue.submit([command_buffer106, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1041.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10215, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10204, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1060.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10196, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10174, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1071, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer10232, 0);
    render_pass_encoder1011.drawIndirect(buffer10117, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1040.setIndexBuffer(buffer10169, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10241, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1041.drawIndirect(buffer10163, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1047, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10242 = device10.createBuffer({
        label: "buffer10242",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10242, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10242, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10222, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10152, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    compute_pass_encoder1080.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10184, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10179, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1010.drawIndirect(buffer10222, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer10135, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10242, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder1070.drawIndirect(buffer10105, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1061.drawIndirect(buffer10160, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10137, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10224, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10183, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10156, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10222, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1070.drawIndirect(buffer10100, 0);
    render_pass_encoder1011.drawIndirect(buffer10150, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1041.drawIndirect(buffer1082, 0);
    render_pass_encoder1040.drawIndirect(buffer10105, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10227, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10167, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10183, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    const buffer10243 = device10.createBuffer({
        label: "buffer10243",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10244 = device10.createBuffer({
        label: "buffer10244",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1097 = device10.createBindGroup({
        label: "bind_group1097",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10243,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10244,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1097);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndirect(buffer10222, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10215, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1040.drawIndexedIndirect(buffer10139, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10201, 0);
    render_pass_encoder1041.drawIndirect(buffer10174, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1041.drawIndirect(buffer10222, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1071.drawIndirect(buffer10198, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10232, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1071.drawIndirect(buffer10188, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10143, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10245 = device10.createBuffer({
        label: "buffer10245",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10245, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10245, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10227, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10105, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1068, 0);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10246 = device10.createBuffer({
        label: "buffer10246",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10246, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10246, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1040.drawIndirect(buffer10218, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10221, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0069, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10170, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1041.drawIndirect(buffer10119, 0);
    render_pass_encoder1010.drawIndirect(buffer1075, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10204, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1061.drawIndirect(buffer10165, 0);
    render_pass_encoder1060.drawIndirect(buffer10110, 0);
    render_pass_encoder1061.drawIndirect(buffer10201, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1083, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer10130, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1063, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndirect(buffer10233, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1041.setIndexBuffer(buffer10108, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10227, 0);
    render_pass_encoder1070.drawIndirect(buffer10124, 0);
    const buffer10247 = device10.createBuffer({
        label: "buffer10247",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10248 = device10.createBuffer({
        label: "buffer10248",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1098 = device10.createBindGroup({
        label: "bind_group1098",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10247,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10248,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1098);
    render_pass_encoder1041.setIndexBuffer(buffer10173, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1089, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1070.drawIndirect(buffer10172, 0);
    render_pass_encoder1030.drawIndirect(buffer10174, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer10160, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10100, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer10160, 0);
    render_pass_encoder1011.drawIndirect(buffer10105, 0);
    render_pass_encoder1070.drawIndirect(buffer10105, 0);
    render_pass_encoder1010.drawIndirect(buffer10219, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10155, 0);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder1071.drawIndexedIndirect(buffer1071, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1061.setIndexBuffer(buffer10204, "uint16");
    compute_pass_encoder1080.end();
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10226, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10216, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1071.drawIndirect(buffer10152, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndirect(buffer10174, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer10218, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10140, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1041.setIndexBuffer(buffer10173, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10219, 0);
    compute_pass_encoder1080.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10198, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1080.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer10240, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1030.drawIndirect(buffer10148, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1072, 0);
    render_pass_encoder1060.drawIndirect(buffer10169, 0);
    render_pass_encoder1070.drawIndirect(buffer10174, 0);
    const buffer10249 = device10.createBuffer({
        label: "buffer10249",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10250 = device10.createBuffer({
        label: "buffer10250",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1099 = device10.createBindGroup({
        label: "bind_group1099",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10249,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10250,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group1099);
    render_pass_encoder1011.drawIndexedIndirect(buffer10205, 0);
    render_pass_encoder1060.drawIndirect(buffer10198, 0);
    render_pass_encoder1061.drawIndirect(buffer10215, 0);
    render_pass_encoder1011.drawIndirect(buffer10219, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10174, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0073, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10119, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1010.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10182, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10220, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10227, 0);
    const buffer10251 = device10.createBuffer({
        label: "buffer10251",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10252 = device10.createBuffer({
        label: "buffer10252",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10100 = device10.createBindGroup({
        label: "bind_group10100",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10251,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10252,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10100);
    render_pass_encoder1071.drawIndirect(buffer1084, 0);
    render_pass_encoder1060.drawIndirect(buffer10119, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10216, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.setIndexBuffer(buffer10246, "uint16");
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1061.setIndexBuffer(buffer10232, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10158, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1041.drawIndirect(buffer10134, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.drawIndirect(buffer1082, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10249, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10183, 0);
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1040.end();
    compute_pass_encoder1080.end();
    render_pass_encoder1040.setIndexBuffer(buffer10229, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10181, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer10204, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1097, 0);
    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0075,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder1060.setIndexBuffer(buffer10235, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10124, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10253 = device10.createBuffer({
        label: "buffer10253",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10253, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10253, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10254 = device10.createBuffer({
        label: "buffer10254",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10254, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10254, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1077, 0);
    const buffer10255 = device10.createBuffer({
        label: "buffer10255",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10256 = device10.createBuffer({
        label: "buffer10256",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10101 = device10.createBindGroup({
        label: "bind_group10101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10255,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10256,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10101);
    render_pass_encoder1070.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1041.drawIndexedIndirect(buffer10198, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1060.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1061.drawIndirect(buffer10242, 0);
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer108, ]);
    device20.queue.submit([]);
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndirect(buffer10143, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1041.setIndexBuffer(buffer1067, "uint16");
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1041.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.end();
    device50.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer10204, 0);
    render_pass_encoder1041.drawIndirect(buffer10123, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndirect(buffer10227, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10193, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10193, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10204, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1000.end();
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    render_pass_encoder1071.drawIndirect(buffer10152, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndirect(buffer10221, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1080, 0);
    const buffer10257 = device10.createBuffer({
        label: "buffer10257",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10258 = device10.createBuffer({
        label: "buffer10258",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10102 = device10.createBindGroup({
        label: "bind_group10102",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10257,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10258,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10102);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer10253, 0);
    device00.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10204, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10140, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10190, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer10169, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10259 = device10.createBuffer({
        label: "buffer10259",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10259, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10259, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10101, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10160, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10123, 0);
    render_pass_encoder1061.end();
    const buffer10260 = device10.createBuffer({
        label: "buffer10260",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10261 = device10.createBuffer({
        label: "buffer10261",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10103 = device10.createBindGroup({
        label: "bind_group10103",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10260,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10261,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10103);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1084, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10253, 0);
    device10.queue.submit([command_buffer107, ]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1071.drawIndirect(buffer10242, 0);
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10192, "uint16");
    render_pass_encoder1061.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10134, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10262 = device10.createBuffer({
        label: "buffer10262",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10262, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10262, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1071, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.setIndexBuffer(buffer10147, "uint16");
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10263 = device10.createBuffer({
        label: "buffer10263",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10263, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10263, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.end();
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndirect(buffer10152, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10184, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10174, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1070.drawIndirect(buffer1068, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10184, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1060.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10153, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1070.drawIndirect(buffer1077, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1030.end();
    const buffer10264 = device10.createBuffer({
        label: "buffer10264",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10265 = device10.createBuffer({
        label: "buffer10265",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10104 = device10.createBindGroup({
        label: "bind_group10104",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10264,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10265,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10104);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10183, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1011.drawIndirect(buffer10263, 0);
    compute_pass_encoder1080.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10266 = device10.createBuffer({
        label: "buffer10266",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10266, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10266, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10211, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1061.drawIndirect(buffer10246, 0);
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    render_pass_encoder1011.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndirect(buffer10253, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10251, 0);
    render_pass_encoder1000.drawIndirect(buffer10123, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder1060.drawIndexedIndirect(buffer10116, 0);
    const buffer10267 = device10.createBuffer({
        label: "buffer10267",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10268 = device10.createBuffer({
        label: "buffer10268",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10105 = device10.createBindGroup({
        label: "bind_group10105",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10267,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10268,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10105);
    render_pass_encoder1000.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1000.drawIndirect(buffer10259, 0);
    device20.queue.submit([command_buffer201, ]);
    const buffer10269 = device10.createBuffer({
        label: "buffer10269",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10270 = device10.createBuffer({
        label: "buffer10270",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10106 = device10.createBindGroup({
        label: "bind_group10106",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10269,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10270,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10106);
    render_pass_encoder1071.drawIndirect(buffer10215, 0);
    render_pass_encoder1030.drawIndirect(buffer10123, 0);
    render_pass_encoder1000.drawIndirect(buffer10227, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10167, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    render_pass_encoder1071.drawIndirect(buffer10221, 0);
    render_pass_encoder1010.drawIndirect(buffer10253, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1060.drawIndirect(buffer10209, 0);
    render_pass_encoder1000.drawIndirect(buffer10233, 0);
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10219, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1071.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndirect(buffer10232, 0);
    device50.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer10216, 0);
    render_pass_encoder1070.drawIndirect(buffer1067, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1071.drawIndirect(buffer10220, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1030.drawIndirect(buffer10173, 0);
    render_pass_encoder1061.drawIndirect(buffer10115, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndirect(buffer1071, 0);
    render_pass_encoder1030.drawIndirect(buffer10263, 0);
    render_pass_encoder1041.drawIndirect(buffer10106, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer10142, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10248, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10248, 0);
    device10.queue.submit([command_buffer105, ]);
    const buffer10271 = device10.createBuffer({
        label: "buffer10271",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10272 = device10.createBuffer({
        label: "buffer10272",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10107 = device10.createBindGroup({
        label: "bind_group10107",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10271,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10272,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10107);
    render_pass_encoder1011.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.setIndexBuffer(buffer10133, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10169, 0);
    render_pass_encoder1010.drawIndirect(buffer10132, 0);
    compute_pass_encoder1080.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1041.endOcclusionQuery()
    compute_pass_encoder1040.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer10183, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10249, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10126, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10165, 0);
    render_pass_encoder1011.drawIndirect(buffer10183, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndirect(buffer1076, 0);
    render_pass_encoder1071.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1061.drawIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10246, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1040.drawIndirect(buffer10245, 0);
    const buffer10273 = device10.createBuffer({
        label: "buffer10273",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10274 = device10.createBuffer({
        label: "buffer10274",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10108 = device10.createBindGroup({
        label: "bind_group10108",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10273,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10274,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10108);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1071.drawIndirect(buffer10242, 0);
    render_pass_encoder1041.drawIndexed(3);
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder1040.drawIndirect(buffer10242, 0);
    render_pass_encoder1000.drawIndirect(buffer10129, 0);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder1011.drawIndirect(buffer10227, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10250, 0);
    render_pass_encoder1010.drawIndirect(buffer10203, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10193, 0);
    device00.queue.submit([]);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer10246, 0);
    render_pass_encoder1041.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1010.drawIndirect(buffer10163, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10275 = device10.createBuffer({
        label: "buffer10275",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10275, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10275, 0);
    device20.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10188, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1064, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer10106, 0);
    render_pass_encoder1010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1060.drawIndirect(buffer10204, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10123, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer10164, "uint16");
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1010.drawIndirect(buffer10263, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10159, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1071.setIndexBuffer(buffer10242, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10188, 0);
    const buffer10276 = device10.createBuffer({
        label: "buffer10276",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10277 = device10.createBuffer({
        label: "buffer10277",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10109 = device10.createBindGroup({
        label: "bind_group10109",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10276,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10277,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10109);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1080.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1041.drawIndirect(buffer10250, 0);
    render_pass_encoder1000.drawIndirect(buffer10106, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndirect(buffer10159, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10105, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1060.setIndexBuffer(buffer10260, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1061, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10158, 0);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder1041.drawIndirect(buffer10214, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10109, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10278 = device10.createBuffer({
        label: "buffer10278",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10278, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10278, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.drawIndirect(buffer10219, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10220, 0);
    const buffer10279 = device10.createBuffer({
        label: "buffer10279",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10280 = device10.createBuffer({
        label: "buffer10280",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10110 = device10.createBindGroup({
        label: "bind_group10110",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10279,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10280,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10110);
    render_pass_encoder1071.drawIndirect(buffer10227, 0);
    render_pass_encoder1040.drawIndirect(buffer10263, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1060.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1070.drawIndirect(buffer10232, 0);
    render_pass_encoder1060.drawIndirect(buffer10275, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer10143, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10281 = device10.createBuffer({
        label: "buffer10281",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10281, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10281, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10227, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10165, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer10144, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer10167, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1087, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0030);
    render_pass_encoder1040.drawIndirect(buffer10203, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10207, "uint16");
    render_pass_encoder1060.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndirect(buffer1067, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer10220, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10230, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    compute_pass_encoder2010.popDebugGroup()
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    compute_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10278, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10282 = device10.createBuffer({
        label: "buffer10282",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10282, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10282, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10263, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1061.drawIndirect(buffer10222, 0);
    render_pass_encoder1030.drawIndirect(buffer10159, 0);
    render_pass_encoder1000.end();
    device20.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10230, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10244, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10195, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10204, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10283 = device10.createBuffer({
        label: "buffer10283",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10283, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10283, 0);
    device00.queue.submit([]);
    const buffer10284 = device10.createBuffer({
        label: "buffer10284",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10285 = device10.createBuffer({
        label: "buffer10285",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10111 = device10.createBindGroup({
        label: "bind_group10111",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10284,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10285,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10111);
    render_pass_encoder1030.drawIndirect(buffer10209, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10130, 0);
    device20.queue.submit([]);
    render_pass_encoder1071.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1041.drawIndirect(buffer10169, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10223, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndirect(buffer10174, 0);
    render_pass_encoder1061.drawIndirect(buffer10188, 0);
    device50.queue.submit([]);
    const buffer10286 = device10.createBuffer({
        label: "buffer10286",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10287 = device10.createBuffer({
        label: "buffer10287",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10112 = device10.createBindGroup({
        label: "bind_group10112",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10286,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10287,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10112);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10288 = device10.createBuffer({
        label: "buffer10288",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10288, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10288, 0);
    compute_pass_encoder2010.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10289 = device10.createBuffer({
        label: "buffer10289",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10289, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10289, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10266, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10270, 0);
    render_pass_encoder1041.drawIndirect(buffer10227, 0);
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1061.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1041.drawIndirect(buffer10154, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1083, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1040.drawIndirect(buffer1062, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1010.drawIndirect(buffer10130, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndirect(buffer10289, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1040.drawIndirect(buffer10101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1061.drawIndirect(buffer10159, 0);
    render_pass_encoder1061.drawIndirect(buffer1078, 0);
    const buffer10290 = device10.createBuffer({
        label: "buffer10290",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10291 = device10.createBuffer({
        label: "buffer10291",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10113 = device10.createBindGroup({
        label: "bind_group10113",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10290,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10291,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10113);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    render_pass_encoder1071.drawIndirect(buffer10104, 0);
    compute_pass_encoder0000.end();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10292 = device10.createBuffer({
        label: "buffer10292",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10292, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10292, 0);
    render_pass_encoder1041.drawIndirect(buffer10100, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10122, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1030.drawIndirect(buffer1038, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1010.drawIndirect(buffer10198, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer10221, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10213, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10266, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1070.drawIndirect(buffer10238, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10277, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder2010.popDebugGroup()
    const buffer10293 = device10.createBuffer({
        label: "buffer10293",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10294 = device10.createBuffer({
        label: "buffer10294",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10114 = device10.createBindGroup({
        label: "bind_group10114",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10293,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10294,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10114);
    render_pass_encoder1041.setIndexBuffer(buffer10175, "uint16");
    const buffer10295 = device10.createBuffer({
        label: "buffer10295",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10296 = device10.createBuffer({
        label: "buffer10296",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10115 = device10.createBindGroup({
        label: "bind_group10115",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10295,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10296,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10115);
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10121, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10267, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10167, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10182, 0);
    render_pass_encoder1061.drawIndirect(buffer1085, 0);
    device50.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1068, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10233, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const buffer10297 = device10.createBuffer({
        label: "buffer10297",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10298 = device10.createBuffer({
        label: "buffer10298",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10116 = device10.createBindGroup({
        label: "bind_group10116",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10297,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10298,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10116);
    render_pass_encoder1030.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10199, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1061.drawIndirect(buffer10188, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10143, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndirect(buffer10219, 0);
    device20.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer10177, "uint16");
    const buffer10299 = device10.createBuffer({
        label: "buffer10299",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10300 = device10.createBuffer({
        label: "buffer10300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10117 = device10.createBindGroup({
        label: "bind_group10117",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10299,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10300,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10117);
    render_pass_encoder1011.setIndexBuffer(buffer10293, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10188, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1010.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10301 = device10.createBuffer({
        label: "buffer10301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10301, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10301, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10106, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer10263, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer10161, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10283, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10140, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer107, ]);
    render_pass_encoder1070.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1060.drawIndirect(buffer1078, 0);
    render_pass_encoder1071.drawIndirect(buffer1066, 0);
    const buffer10302 = device10.createBuffer({
        label: "buffer10302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10303 = device10.createBuffer({
        label: "buffer10303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10118 = device10.createBindGroup({
        label: "bind_group10118",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10303,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10118);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer10186, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer10119, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10275, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10200, 0);
    render_pass_encoder1010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.drawIndirect(buffer10198, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1040.end();
    render_pass_encoder1040.drawIndirect(buffer10215, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0091, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10189, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10199, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10284, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1000.drawIndirect(buffer10221, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10253, 0);
    compute_pass_encoder0000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0092, 0);
    render_pass_encoder1061.drawIndirect(buffer10107, 0);
    render_pass_encoder1041.drawIndirect(buffer10272, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1011.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10165, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10232, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10183, 0);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1060.drawIndirect(buffer10100, 0);
    render_pass_encoder1030.drawIndirect(buffer10194, 0);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1071, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1071.drawIndirect(buffer1086, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1040.drawIndirect(buffer1071, 0);
    render_pass_encoder1010.drawIndirect(buffer10129, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10302, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10143, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer10278, 0);
    render_pass_encoder1041.drawIndirect(buffer1068, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer10263, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1085, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer10269, 0);
    render_pass_encoder1010.drawIndirect(buffer10233, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10171, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10269, 0);
    render_pass_encoder1000.drawIndirect(buffer10281, 0);
    render_pass_encoder1061.drawIndirect(buffer1091, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10231, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10153, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1035, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10304 = device10.createBuffer({
        label: "buffer10304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10304, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10304, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10137, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1070.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1061.end();
    compute_pass_encoder1040.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10266, 0);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0032);
    render_pass_encoder1011.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10193, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0095, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0095, 0);
    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0097,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0033);
    render_pass_encoder1041.drawIndirect(buffer10272, 0);
    render_pass_encoder1071.drawIndirect(buffer10283, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndirect(buffer10203, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer10300, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10142, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10305 = device10.createBuffer({
        label: "buffer10305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10305, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10305, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10233, 0);
    render_pass_encoder1010.drawIndirect(buffer10287, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer10160, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10116, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.drawIndirect(buffer10233, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10244, "uint16");
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10202, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1060.drawIndirect(buffer10139, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1041.setIndexBuffer(buffer10117, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.end();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer10305, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndirect(buffer10254, 0);
    render_pass_encoder1061.drawIndirect(buffer10222, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10288, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1041.drawIndirect(buffer10196, 0);
    render_pass_encoder1061.drawIndirect(buffer1073, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1070.drawIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer10163, 0);
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1070.end();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10306 = device10.createBuffer({
        label: "buffer10306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10306, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10306, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10256, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10262, 0);
    render_pass_encoder1041.drawIndirect(buffer10105, 0);
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    render_pass_encoder1011.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10253, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1040.drawIndirect(buffer10134, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10292, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.setIndexBuffer(buffer10171, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10278, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10159, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1070.drawIndirect(buffer1076, 0);
    render_pass_encoder1071.drawIndirect(buffer10266, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1078, "uint16");
    device10.queue.submit([command_buffer108, ]);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([]);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer10305, 0);
    render_pass_encoder1000.drawIndirect(buffer10242, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10219, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00100, 0);
    render_pass_encoder1010.drawIndirect(buffer10160, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10305, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.drawIndirect(buffer1085, 0);
    render_pass_encoder1010.drawIndirect(buffer1077, 0);
    render_pass_encoder1040.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10232, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1040.drawIndirect(buffer1084, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1030.drawIndirect(buffer10203, 0);
    render_pass_encoder1011.drawIndirect(buffer10220, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndirect(buffer10266, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1070.drawIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer101, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10307 = device10.createBuffer({
        label: "buffer10307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10307, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10307, 0);
    render_pass_encoder1041.drawIndirect(buffer10188, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1041.setIndexBuffer(buffer10250, "uint16");
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10308 = device10.createBuffer({
        label: "buffer10308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10308, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10308, 0);
    const buffer10309 = device10.createBuffer({
        label: "buffer10309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10310 = device10.createBuffer({
        label: "buffer10310",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10119 = device10.createBindGroup({
        label: "bind_group10119",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10310,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10119);
    render_pass_encoder1071.drawIndirect(buffer10306, 0);
    render_pass_encoder1071.drawIndirect(buffer10174, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10125, 0);
    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00102,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0035);
    device20.queue.submit([command_buffer200, ]);
    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00104,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder1000.drawIndexedIndirect(buffer10266, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1000.drawIndirect(buffer10246, 0);
    render_pass_encoder1011.drawIndirect(buffer10169, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10214, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, command_buffer108, ]);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1070.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10255, 0);
    const buffer10311 = device10.createBuffer({
        label: "buffer10311",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10312 = device10.createBuffer({
        label: "buffer10312",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10120 = device10.createBindGroup({
        label: "bind_group10120",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10311,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10312,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10120);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer10221, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10305, 0);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10313 = device10.createBuffer({
        label: "buffer10313",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10313, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10313, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10224, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder1010.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10314 = device10.createBuffer({
        label: "buffer10314",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10314, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10314, 0);
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10272, 0);
    device10.queue.submit([command_buffer101, command_buffer104, command_buffer106, command_buffer107, ]);
    render_pass_encoder1061.drawIndirect(buffer10209, 0);
    device50.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10237, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10276, 0);
    render_pass_encoder1071.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10152, 0);
    device00.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1073, 0);
    render_pass_encoder1061.drawIndirect(buffer10188, 0);
    render_pass_encoder1000.drawIndirect(buffer10106, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer10150, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1061.setIndexBuffer(buffer10255, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1000.drawIndirect(buffer10305, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndirect(buffer10266, 0);
    render_pass_encoder1060.drawIndirect(buffer10236, 0);
    render_pass_encoder1000.drawIndirect(buffer1085, 0);
    render_pass_encoder1041.drawIndirect(buffer10219, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer10241, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10307, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10213, "uint16");
    render_pass_encoder1000.end();
    device20.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1071, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer10259, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1040.drawIndirect(buffer10203, 0);
    render_pass_encoder1000.drawIndirect(buffer10215, 0);
    render_pass_encoder1010.drawIndirect(buffer10313, 0);
    render_pass_encoder1060.endOcclusionQuery()
    device50.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10221, 0);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1030.drawIndirect(buffer10203, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10299, 0);
    render_pass_encoder1041.drawIndirect(buffer10214, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1011.drawIndirect(buffer10134, 0);
    const buffer10315 = device10.createBuffer({
        label: "buffer10315",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10316 = device10.createBuffer({
        label: "buffer10316",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10121 = device10.createBindGroup({
        label: "bind_group10121",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10315,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10316,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10121);
    compute_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer10233, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer10165, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1011.drawIndirect(buffer10106, 0);
    render_pass_encoder1030.drawIndirect(buffer10233, 0);
    render_pass_encoder1061.drawIndirect(buffer10305, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1095, 0);
    const buffer10317 = device10.createBuffer({
        label: "buffer10317",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10318 = device10.createBuffer({
        label: "buffer10318",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10122 = device10.createBindGroup({
        label: "bind_group10122",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10317,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10318,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10122);
    render_pass_encoder1070.drawIndirect(buffer10230, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10295, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1041.drawIndirect(buffer10259, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10170, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10164, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1060.drawIndirect(buffer10312, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10271, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10230, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10307, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10221, 0);
    compute_pass_encoder0000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00105, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00105, 0);
    render_pass_encoder1011.drawIndirect(buffer10307, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10295, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10202, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    render_pass_encoder1041.drawIndirect(buffer10289, 0);
    render_pass_encoder1060.drawIndirect(buffer1093, 0);
    render_pass_encoder1030.drawIndirect(buffer10123, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10306, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1076, 0);
    render_pass_encoder1041.drawIndirect(buffer10236, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10221, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00106, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00106, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10307, 0);
    render_pass_encoder1061.drawIndirect(buffer10281, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10275, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10282, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1073, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1077, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10319 = device10.createBuffer({
        label: "buffer10319",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10319, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10319, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10166, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10203, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1000.drawIndirect(buffer10283, 0);
    const buffer10320 = device10.createBuffer({
        label: "buffer10320",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10321 = device10.createBuffer({
        label: "buffer10321",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10123 = device10.createBindGroup({
        label: "bind_group10123",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10320,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10321,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10123);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10314, 0);
    render_pass_encoder1071.drawIndirect(buffer10204, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.drawIndirect(buffer10301, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10315, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1070.drawIndirect(buffer10158, 0);
    render_pass_encoder1030.drawIndirect(buffer10209, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10245, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.drawIndirect(buffer10283, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10319, 0);
    render_pass_encoder1041.drawIndirect(buffer10183, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1030.drawIndirect(buffer10215, 0);
    render_pass_encoder1000.drawIndirect(buffer10305, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10162, "uint16");
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer10313, 0);
    render_pass_encoder1070.drawIndirect(buffer10121, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1060.drawIndirect(buffer1076, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10284, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10177, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10307, 0);
    render_pass_encoder1011.drawIndirect(buffer10292, 0);
    render_pass_encoder1060.drawIndirect(buffer10139, 0);
    render_pass_encoder1030.drawIndirect(buffer10259, 0);
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10230, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10308, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.end();
    render_pass_encoder1060.drawIndirect(buffer10301, 0);
    render_pass_encoder1041.drawIndirect(buffer10215, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10322 = device10.createBuffer({
        label: "buffer10322",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10322, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10322, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10268, 0);
    render_pass_encoder1030.drawIndirect(buffer10262, 0);
    render_pass_encoder1071.drawIndirect(buffer10159, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndirect(buffer10144, 0);
    render_pass_encoder1060.drawIndirect(buffer10308, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10299, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1034, 0);
    render_pass_encoder1060.setIndexBuffer(buffer106, "uint16");
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10323 = device10.createBuffer({
        label: "buffer10323",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10323, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10323, 0);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10106, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1071.setIndexBuffer(buffer10218, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1060.drawIndirect(buffer10246, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10198, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10153, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10314, 0);
    render_pass_encoder1010.drawIndirect(buffer10314, 0);
    render_pass_encoder1061.drawIndirect(buffer10310, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10221, 0);
    device20.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer10204, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10324 = device10.createBuffer({
        label: "buffer10324",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10324, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10324, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1040.drawIndirect(buffer10159, 0);
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    device30.queue.submit([]);
    const buffer10325 = device10.createBuffer({
        label: "buffer10325",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10326 = device10.createBuffer({
        label: "buffer10326",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10124 = device10.createBindGroup({
        label: "bind_group10124",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10325,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10326,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10124);
    render_pass_encoder1010.drawIndirect(buffer10224, 0);
    render_pass_encoder1030.drawIndirect(buffer10292, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10163, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10204, 0);
    device00.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10296, 0);
    render_pass_encoder1061.drawIndirect(buffer10251, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10233, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10225, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1000.drawIndirect(buffer10289, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.setIndexBuffer(buffer10213, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00107, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00107, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10186, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer10206, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10324, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1061.drawIndirect(buffer10222, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10268, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndirect(buffer10221, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer10322, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10270, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, ]);
    render_pass_encoder1070.drawIndirect(buffer10312, 0);
    render_pass_encoder1041.drawIndirect(buffer10233, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1011.end();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1077, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10322, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10224, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1071.drawIndirect(buffer10123, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer10142, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1010.setIndexBuffer(buffer10253, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10292, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10247, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1076, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1010.drawIndirect(buffer10266, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndirect(buffer1072, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10193, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10255, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10286, 0);
    render_pass_encoder1010.drawIndirect(buffer1072, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer10143, 0);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10327 = device10.createBuffer({
        label: "buffer10327",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10327, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10327, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1000.drawIndirect(buffer10288, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1000.drawIndirect(buffer10122, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10200, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10163, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10209, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1061.drawIndirect(buffer10220, 0);
    device50.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10241, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1030.setIndexBuffer(buffer10327, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10222, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer10107, 0);
    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00109,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0037);
    render_pass_encoder1041.drawIndirect(buffer10220, 0);
    render_pass_encoder1060.drawIndirect(buffer10209, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10205, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer1072, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10279, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10134, 0);
    render_pass_encoder1070.drawIndirect(buffer10309, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10180, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1061.drawIndirect(buffer10174, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1070.end();
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0038);
    render_pass_encoder1000.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10276, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1070.drawIndirect(buffer10122, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10160, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.drawIndirect(buffer1059, 0);
    render_pass_encoder1040.drawIndirect(buffer10221, 0);
    device10.queue.submit([command_buffer104, ]);
    const buffer10328 = device10.createBuffer({
        label: "buffer10328",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10329 = device10.createBuffer({
        label: "buffer10329",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10125 = device10.createBindGroup({
        label: "bind_group10125",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10328,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10329,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10125);
    render_pass_encoder1070.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10106, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1060.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1011.drawIndirect(buffer10168, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1060.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer10314, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10222, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10215, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10330 = device10.createBuffer({
        label: "buffer10330",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10330, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10330, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1068, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer10305, "uint16");
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10331 = device10.createBuffer({
        label: "buffer10331",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10331, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10331, 0);
    render_pass_encoder1070.drawIndirect(buffer1068, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10260, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10160, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10241, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1061.setIndexBuffer(buffer10264, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10330, 0);
    device10.queue.submit([command_buffer100, command_buffer108, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10324, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1070.drawIndirect(buffer10128, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1030.drawIndirect(buffer1065, 0);
    const buffer10332 = device10.createBuffer({
        label: "buffer10332",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10333 = device10.createBuffer({
        label: "buffer10333",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10126 = device10.createBindGroup({
        label: "bind_group10126",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10332,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10333,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10126);
    render_pass_encoder1040.drawIndirect(buffer1076, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10185, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00112, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00112, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10194, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10136, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10253, 0);
    render_pass_encoder1061.drawIndirect(buffer10235, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10102, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer10322, 0);
    device00.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer10233, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10193, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10247, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10278, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer10100, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10324, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1000.drawIndirect(buffer10310, 0);
    render_pass_encoder1000.drawIndirect(buffer10214, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1061.drawIndirect(buffer10317, 0);
    render_pass_encoder1011.drawIndirect(buffer10159, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10204, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10304, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10207, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10201, 0);
    render_pass_encoder1071.drawIndirect(buffer1026, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10281, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00113, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00113, 0);
    render_pass_encoder1000.drawIndirect(buffer10176, 0);
    const buffer10334 = device10.createBuffer({
        label: "buffer10334",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10335 = device10.createBuffer({
        label: "buffer10335",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10127 = device10.createBindGroup({
        label: "bind_group10127",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10334,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10335,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10127);
    render_pass_encoder1000.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10214, "uint16");
    const buffer10336 = device10.createBuffer({
        label: "buffer10336",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10337 = device10.createBuffer({
        label: "buffer10337",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10128 = device10.createBindGroup({
        label: "bind_group10128",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10336,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10337,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10128);
    render_pass_encoder1041.drawIndirect(buffer10209, 0);
    render_pass_encoder1071.drawIndirect(buffer10322, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10301, 0);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer107, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1011.setIndexBuffer(buffer10162, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1000.drawIndirect(buffer10289, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndirect(buffer10233, 0);
    device10.queue.submit([]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1000.drawIndirect(buffer10183, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10314, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10193, 0);
    render_pass_encoder1070.drawIndirect(buffer1068, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1000.end();
    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00115,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0039);
    render_pass_encoder1040.drawIndirect(buffer10160, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10338 = device10.createBuffer({
        label: "buffer10338",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10338, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10338, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10245, 0);
    render_pass_encoder1061.drawIndirect(buffer101, 0);
    compute_pass_encoder1080.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00116, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00116, 0);
    render_pass_encoder1061.drawIndirect(buffer10143, 0);
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10236, 0);
    render_pass_encoder1041.endOcclusionQuery()
    device50.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer10305, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10323, 0);
    render_pass_encoder1010.drawIndirect(buffer10118, 0);
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10192, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10133, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10323, 0);
    render_pass_encoder1070.drawIndirect(buffer10150, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndexedIndirect(buffer10282, 0);
    render_pass_encoder1010.drawIndirect(buffer10134, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1061.setIndexBuffer(buffer10305, "uint16");
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1061.end();
    compute_pass_encoder1040.end();
    device10.queue.submit([command_buffer100, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10339 = device10.createBuffer({
        label: "buffer10339",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10339, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10339, 0);
    render_pass_encoder1060.drawIndirect(buffer10281, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer10275, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1061.drawIndirect(buffer1092, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1077, 0);
    device20.queue.submit([]);
    compute_pass_encoder1040.end();
    render_pass_encoder1061.drawIndirect(buffer10139, 0);
    render_pass_encoder1030.drawIndirect(buffer10169, 0);
    render_pass_encoder1061.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10165, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10134, 0);
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer10308, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1071.drawIndirect(buffer1089, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1061.drawIndirect(buffer10193, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer10242, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10306, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1070.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10152, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer10327, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndirect(buffer10193, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00117, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00117, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1070.drawIndirect(buffer10314, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10209, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10212, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10295, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10139, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10340 = device10.createBuffer({
        label: "buffer10340",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10340, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10340, 0);
    device10.queue.submit([command_buffer107, command_buffer108, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer108, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10183, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1040.drawIndirect(buffer10105, 0);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer10175, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10220, 0);
    const buffer10341 = device10.createBuffer({
        label: "buffer10341",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10342 = device10.createBuffer({
        label: "buffer10342",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10129 = device10.createBindGroup({
        label: "bind_group10129",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10341,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10342,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10129);
    render_pass_encoder1060.drawIndirect(buffer10324, 0);
    device10.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer10284, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10209, 0);
    compute_pass_encoder1040.end();
    const buffer10343 = device10.createBuffer({
        label: "buffer10343",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10344 = device10.createBuffer({
        label: "buffer10344",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10130 = device10.createBindGroup({
        label: "bind_group10130",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10343,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10344,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10130);
    render_pass_encoder1040.setIndexBuffer(buffer1088, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer1079, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10221, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10286, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer10286, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndirect(buffer10152, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10322, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer10319, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10213, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10245, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer10214, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10289, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1041.drawIndirect(buffer10218, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10292, 0);
    const buffer10345 = device10.createBuffer({
        label: "buffer10345",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10346 = device10.createBuffer({
        label: "buffer10346",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10131 = device10.createBindGroup({
        label: "bind_group10131",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10345,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10346,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10131);
    render_pass_encoder1060.end();
    render_pass_encoder1041.drawIndirect(buffer10198, 0);
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10274, 0);
    render_pass_encoder1061.drawIndirect(buffer10289, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10227, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1070.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10218, 0);
    render_pass_encoder1061.drawIndirect(buffer10327, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndirect(buffer10236, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10104, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10160, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10253, 0);
    compute_pass_encoder0000.end();
    device00.queue.submit([]);
    render_pass_encoder1071.setIndexBuffer(buffer10244, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1030.drawIndirect(buffer10101, 0);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1000.drawIndirect(buffer10221, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10280, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10269, 0);
    render_pass_encoder1000.drawIndirect(buffer10323, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10315, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1000.drawIndirect(buffer10278, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10167, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10277, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1040.drawIndirect(buffer10209, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10330, 0);
    render_pass_encoder1040.drawIndirect(buffer10219, 0);
    render_pass_encoder1061.drawIndirect(buffer10169, 0);
    render_pass_encoder1011.drawIndirect(buffer10139, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1000.drawIndirect(buffer10215, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1041.drawIndirect(buffer10318, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10342, 0);
    const buffer10347 = device10.createBuffer({
        label: "buffer10347",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10348 = device10.createBuffer({
        label: "buffer10348",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10132 = device10.createBindGroup({
        label: "bind_group10132",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10347,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10348,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10132);
    render_pass_encoder1071.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10322, 0);
    render_pass_encoder1040.drawIndirect(buffer10285, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer10339, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10281, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10306, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1038, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    const buffer10349 = device10.createBuffer({
        label: "buffer10349",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10350 = device10.createBuffer({
        label: "buffer10350",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10133 = device10.createBindGroup({
        label: "bind_group10133",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10349,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10350,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10133);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10319, 0);
    render_pass_encoder1000.drawIndirect(buffer10322, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10333, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10123, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1071.drawIndirect(buffer10322, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10307, 0);
    render_pass_encoder1041.drawIndirect(buffer1010, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10203, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndirect(buffer10305, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10323, 0);
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10274, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10138, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10246, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1070, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1070.drawIndirect(buffer10222, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10174, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10267, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer10283, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10323, 0);
    render_pass_encoder1040.drawIndirect(buffer10188, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer10183, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1071.drawIndirect(buffer10327, 0);
    render_pass_encoder1070.drawIndirect(buffer10292, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10222, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1071.drawIndirect(buffer10283, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10104, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10282, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1072, 0);
    render_pass_encoder1060.drawIndirect(buffer10266, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    const buffer10351 = device10.createBuffer({
        label: "buffer10351",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10352 = device10.createBuffer({
        label: "buffer10352",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10134 = device10.createBindGroup({
        label: "bind_group10134",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10351,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10352,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10134);
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    render_pass_encoder1010.drawIndirect(buffer1076, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1011.drawIndirect(buffer10232, 0);
    const buffer10353 = device10.createBuffer({
        label: "buffer10353",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10354 = device10.createBuffer({
        label: "buffer10354",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10135 = device10.createBindGroup({
        label: "bind_group10135",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10353,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10354,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10135);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer10218, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1070, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10263, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1000.drawIndirect(buffer10338, 0);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndirect(buffer10352, 0);
    render_pass_encoder1061.drawIndirect(buffer10159, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1000.drawIndirect(buffer10274, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1000.drawIndirect(buffer10330, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndirect(buffer10331, 0);
    render_pass_encoder1011.drawIndirect(buffer10123, 0);
    render_pass_encoder1040.drawIndirect(buffer10254, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10319, 0);
    render_pass_encoder1041.drawIndirect(buffer10187, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10289, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1071, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00118, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00118, 0);
    device00.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer10181, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10266, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10245, 0);
    render_pass_encoder1041.drawIndirect(buffer10308, 0);
    device50.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer10306, 0);
    render_pass_encoder1070.drawIndirect(buffer10101, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10330, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1030.drawIndirect(buffer10134, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1085, "uint16");
    device50.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndirect(buffer10289, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10211, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10330, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10272, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10294, 0);
    render_pass_encoder1070.drawIndirect(buffer10308, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndirect(buffer10108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10231, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10274, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1070.drawIndirect(buffer1034, 0);
    render_pass_encoder1061.drawIndirect(buffer10274, 0);
    render_pass_encoder1030.drawIndirect(buffer10188, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1010.drawIndirect(buffer10218, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10340, 0);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1070.drawIndirect(buffer10283, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10209, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10327, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1070.end();
    render_pass_encoder1041.drawIndirect(buffer10188, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10355 = device10.createBuffer({
        label: "buffer10355",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10355, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10355, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10165, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00120,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0040);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10282, 0);
    compute_pass_encoder1080.end();
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10245, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10306, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10302, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10262, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer10105, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1060.drawIndirect(buffer10339, 0);
    device50.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer10218, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    device20.queue.submit([]);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10106, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10234, 0);
    render_pass_encoder1061.drawIndirect(buffer10347, 0);
    render_pass_encoder1000.drawIndirect(buffer10233, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10223, 0);
    render_pass_encoder1041.drawIndirect(buffer10109, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setIndexBuffer(buffer10151, "uint16");
    device10.queue.submit([command_buffer108, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10263, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer10314, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndirect(buffer10275, 0);
    render_pass_encoder1010.drawIndirect(buffer10228, 0);
    render_pass_encoder1041.drawIndirect(buffer10307, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10282, 0);
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.drawIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndirect(buffer10204, 0);
    const buffer10356 = device10.createBuffer({
        label: "buffer10356",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10357 = device10.createBuffer({
        label: "buffer10357",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10136 = device10.createBindGroup({
        label: "bind_group10136",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10356,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10357,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10136);
    compute_pass_encoder1080.end();
    render_pass_encoder1061.drawIndirect(buffer10308, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10167, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10160, 0);
    const buffer10358 = device10.createBuffer({
        label: "buffer10358",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10359 = device10.createBuffer({
        label: "buffer10359",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10137 = device10.createBindGroup({
        label: "bind_group10137",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10358,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10359,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10137);
    render_pass_encoder1010.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1030.drawIndirect(buffer10204, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1071.drawIndirect(buffer1061, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10220, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer10205, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10212, 0);
    render_pass_encoder1000.drawIndirect(buffer10200, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1071.setIndexBuffer(buffer10221, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10174, 0);
    device10.queue.submit([command_buffer100, command_buffer104, command_buffer106, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer10130, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1070.drawIndirect(buffer10246, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10340, 0);
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndirect(buffer10183, 0);
    render_pass_encoder1041.drawIndirect(buffer10331, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10214, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndirect(buffer10143, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10281, 0);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1000.end();
    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00122,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0041);
    render_pass_encoder1060.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1062, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1061.setIndexBuffer(buffer10145, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10355, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10117, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1061.drawIndirect(buffer10347, 0);
    render_pass_encoder1030.drawIndirect(buffer10342, 0);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    const buffer10360 = device10.createBuffer({
        label: "buffer10360",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10361 = device10.createBuffer({
        label: "buffer10361",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10138 = device10.createBindGroup({
        label: "bind_group10138",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10360,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10361,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10138);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10264, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10222, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10362 = device10.createBuffer({
        label: "buffer10362",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10362, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10362, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1071.drawIndirect(buffer10301, 0);
    render_pass_encoder1060.drawIndirect(buffer10142, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1060.drawIndirect(buffer10287, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10227, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10277, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer100, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10193, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10363 = device10.createBuffer({
        label: "buffer10363",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10363, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10363, 0);
    render_pass_encoder1010.drawIndirect(buffer10282, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndirect(buffer10362, 0);
    render_pass_encoder1071.drawIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndirect(buffer10294, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10209, 0);
    const buffer10364 = device10.createBuffer({
        label: "buffer10364",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10365 = device10.createBuffer({
        label: "buffer10365",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10139 = device10.createBindGroup({
        label: "bind_group10139",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10364,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10365,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10139);
    render_pass_encoder1040.drawIndirect(buffer10222, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10204, 0);
    device10.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer10183, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10262, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1070.drawIndirect(buffer10242, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1030.drawIndirect(buffer10230, 0);
    render_pass_encoder1041.drawIndirect(buffer10157, 0);
    render_pass_encoder1061.drawIndirect(buffer10283, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10120, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndirect(buffer10334, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1061.drawIndirect(buffer10183, 0);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1011.drawIndirect(buffer10308, 0);
    render_pass_encoder1070.drawIndirect(buffer10288, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndirect(buffer10245, 0);
    render_pass_encoder1041.drawIndirect(buffer10222, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10275, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10146, 0);
    render_pass_encoder1011.drawIndirect(buffer10289, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10210, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1041.drawIndirect(buffer10321, 0);
    render_pass_encoder1010.drawIndirect(buffer10113, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10205, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10190, "uint16");
    render_pass_encoder1060.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10266, 0);
    const buffer10366 = device10.createBuffer({
        label: "buffer10366",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10367 = device10.createBuffer({
        label: "buffer10367",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10140 = device10.createBindGroup({
        label: "bind_group10140",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10366,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10367,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10140);
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndirect(buffer10330, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1071.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10340, 0);
    render_pass_encoder1070.drawIndirect(buffer10338, 0);
    render_pass_encoder1010.drawIndirect(buffer10227, 0);
    render_pass_encoder1070.drawIndirect(buffer10313, 0);
    render_pass_encoder1030.drawIndirect(buffer10220, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10223, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1000.drawIndirect(buffer10282, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10301, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1070.drawIndirect(buffer10230, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10368 = device10.createBuffer({
        label: "buffer10368",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10368, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10368, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10305, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10162, 0);
    render_pass_encoder1061.drawIndirect(buffer10215, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer10123, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10362, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10136, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1011.drawIndirect(buffer10230, 0);
    render_pass_encoder1060.drawIndirect(buffer10366, 0);
    render_pass_encoder1060.drawIndirect(buffer10181, 0);
    render_pass_encoder1030.drawIndirect(buffer1068, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndirect(buffer10221, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10215, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer10264, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10227, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10238, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10242, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1071.drawIndirect(buffer10209, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1011.popDebugGroup();
    const buffer10369 = device10.createBuffer({
        label: "buffer10369",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10370 = device10.createBuffer({
        label: "buffer10370",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10141 = device10.createBindGroup({
        label: "bind_group10141",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10369,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10370,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10141);
    render_pass_encoder1000.drawIndexedIndirect(buffer10355, 0);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer10360, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10306, 0);
    render_pass_encoder1041.drawIndirect(buffer10348, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10301, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10295, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10279, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1020, "uint16");
    const buffer10371 = device10.createBuffer({
        label: "buffer10371",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10372 = device10.createBuffer({
        label: "buffer10372",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10142 = device10.createBindGroup({
        label: "bind_group10142",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10371,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10372,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10142);
    render_pass_encoder1070.drawIndirect(buffer10310, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10306, 0);
    render_pass_encoder1040.drawIndirect(buffer10233, 0);
    render_pass_encoder1071.drawIndirect(buffer10281, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer10243, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10254, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10232, 0);
    render_pass_encoder1011.drawIndirect(buffer10288, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10162, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10370, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1030.drawIndirect(buffer10227, 0);
    render_pass_encoder1060.drawIndirect(buffer10259, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10196, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    device00.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1072, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer10174, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10234, 0);
    render_pass_encoder1070.drawIndirect(buffer10327, 0);
    render_pass_encoder1071.drawIndirect(buffer10220, 0);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10359, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1041.drawIndirect(buffer1068, 0);
    render_pass_encoder1041.drawIndirect(buffer10266, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10322, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1071.drawIndirect(buffer10262, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10106, 0);
    render_pass_encoder1011.drawIndirect(buffer10283, 0);
    compute_pass_encoder1010.end();
    device00.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10204, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10373 = device10.createBuffer({
        label: "buffer10373",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10373, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10373, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10327, 0);
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    const buffer10374 = device10.createBuffer({
        label: "buffer10374",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10375 = device10.createBuffer({
        label: "buffer10375",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10143 = device10.createBindGroup({
        label: "bind_group10143",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10374,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10375,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10143);
    render_pass_encoder1071.drawIndexedIndirect(buffer10313, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1071.drawIndirect(buffer10349, 0);
    render_pass_encoder1030.drawIndirect(buffer10202, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10266, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1070.drawIndirect(buffer10193, 0);
    render_pass_encoder1070.drawIndirect(buffer10164, 0);
    render_pass_encoder1061.drawIndirect(buffer10200, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1080.end();
    render_pass_encoder1070.drawIndirect(buffer10227, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10243, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10189, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10241, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1071.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1041.drawIndirect(buffer1042, 0);
    const buffer10376 = device10.createBuffer({
        label: "buffer10376",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10377 = device10.createBuffer({
        label: "buffer10377",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10144 = device10.createBindGroup({
        label: "bind_group10144",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10376,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10377,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10144);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10378 = device10.createBuffer({
        label: "buffer10378",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10378, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10378, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndirect(buffer10339, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10226, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1030.drawIndirect(buffer10363, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10233, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1000.drawIndirect(buffer10327, 0);
    render_pass_encoder1070.drawIndirect(buffer10378, 0);
    render_pass_encoder1041.drawIndirect(buffer10106, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10184, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10279, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndirect(buffer10253, 0);
    render_pass_encoder1071.drawIndirect(buffer10263, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1041.drawIndirect(buffer10366, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1030.drawIndirect(buffer10259, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10131, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1030.end();
    const buffer10379 = device10.createBuffer({
        label: "buffer10379",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10380 = device10.createBuffer({
        label: "buffer10380",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10145 = device10.createBindGroup({
        label: "bind_group10145",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10379,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10380,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10145);
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer10313, 0);
    render_pass_encoder1071.drawIndirect(buffer10234, 0);
    render_pass_encoder1071.drawIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer101, command_buffer104, command_buffer105, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1061.drawIndirect(buffer10220, 0);
    device00.queue.submit([]);
    const buffer10381 = device10.createBuffer({
        label: "buffer10381",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10382 = device10.createBuffer({
        label: "buffer10382",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10146 = device10.createBindGroup({
        label: "bind_group10146",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10381,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10382,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10146);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10180, 0);
    render_pass_encoder1071.drawIndirect(buffer10105, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10220, 0);
    const buffer10383 = device10.createBuffer({
        label: "buffer10383",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10384 = device10.createBuffer({
        label: "buffer10384",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10147 = device10.createBindGroup({
        label: "bind_group10147",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10383,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10384,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10147);
    render_pass_encoder1071.drawIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1040.drawIndirect(buffer10323, 0);
    render_pass_encoder1000.drawIndirect(buffer10106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10306, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10308, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1071.end();
    render_pass_encoder1030.setIndexBuffer(buffer10261, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10330, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10340, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10266, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1071.drawIndirect(buffer10378, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1071.drawIndirect(buffer10304, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10350, 0);
    const buffer10385 = device10.createBuffer({
        label: "buffer10385",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10386 = device10.createBuffer({
        label: "buffer10386",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10148 = device10.createBindGroup({
        label: "bind_group10148",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10385,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10386,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10148);
    render_pass_encoder1071.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1011.drawIndirect(buffer10350, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10387 = device10.createBuffer({
        label: "buffer10387",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10387, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10387, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10331, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10141, 0);
    device00.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10192, 0);
    render_pass_encoder1070.drawIndirect(buffer10220, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10362, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10174, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1000.drawIndirect(buffer10246, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer10142, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10281, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1040.end();
    compute_pass_encoder1080.end();
    render_pass_encoder1030.drawIndirect(buffer10288, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer10219, 0);
    render_pass_encoder1070.drawIndirect(buffer10192, 0);
    render_pass_encoder1010.drawIndirect(buffer10345, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1040.drawIndirect(buffer10143, 0);
    render_pass_encoder1070.drawIndirect(buffer10368, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10259, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1070.drawIndirect(buffer10220, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10379, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1041.drawIndirect(buffer10307, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1070.drawIndirect(buffer10169, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10319, 0);
    render_pass_encoder1030.drawIndirect(buffer10222, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10141, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10245, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndirect(buffer10295, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1071.drawIndirect(buffer10100, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10258, 0);
    render_pass_encoder1041.drawIndirect(buffer1071, 0);
    device20.queue.submit([]);
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10381, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10253, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1066, 0);
    render_pass_encoder1040.drawIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1060.drawIndirect(buffer10132, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1092, 0);
    render_pass_encoder1041.drawIndirect(buffer10278, 0);
    render_pass_encoder1030.drawIndirect(buffer10219, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10269, 0);
    render_pass_encoder1060.drawIndirect(buffer10183, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer106, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10304, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndirect(buffer10215, 0);
    const buffer10388 = device10.createBuffer({
        label: "buffer10388",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10389 = device10.createBuffer({
        label: "buffer10389",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10149 = device10.createBindGroup({
        label: "bind_group10149",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10388,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10389,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10149);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10155, 0);
    const buffer10390 = device10.createBuffer({
        label: "buffer10390",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10391 = device10.createBuffer({
        label: "buffer10391",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10150 = device10.createBindGroup({
        label: "bind_group10150",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10390,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10391,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10150);
    device00.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10327, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10265, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1011.drawIndirect(buffer10183, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10266, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1041.drawIndirect(buffer10276, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1000.drawIndirect(buffer10355, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1061.drawIndirect(buffer1068, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1060.drawIndirect(buffer10123, 0);
    render_pass_encoder1061.popDebugGroup();
    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00124,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0042);
    device20.queue.submit([]);
    compute_pass_encoder1040.end();
    render_pass_encoder1061.drawIndirect(buffer10227, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1000.drawIndirect(buffer10376, 0);
    render_pass_encoder1070.drawIndirect(buffer10214, 0);
    render_pass_encoder1010.drawIndirect(buffer10214, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10218, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer10221, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10292, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10282, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10240, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer10245, 0);
    render_pass_encoder1061.drawIndirect(buffer10169, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndirect(buffer10340, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1060.drawIndirect(buffer10263, 0);
    render_pass_encoder1071.drawIndirect(buffer10383, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10183, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1041.drawIndirect(buffer10375, 0);
    render_pass_encoder1040.drawIndirect(buffer10218, 0);
    device50.queue.submit([]);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1060.setIndexBuffer(buffer10329, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndirect(buffer10313, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10378, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1000.drawIndirect(buffer10384, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10245, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1061.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10313, 0);
    const buffer10392 = device10.createBuffer({
        label: "buffer10392",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10393 = device10.createBuffer({
        label: "buffer10393",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10151 = device10.createBindGroup({
        label: "bind_group10151",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10392,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10393,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10151);
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1010.drawIndirect(buffer10283, 0);
    render_pass_encoder1071.drawIndirect(buffer10152, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10314, 0);
    render_pass_encoder1071.drawIndirect(buffer10378, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer10272, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10278, "uint16");
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10394 = device10.createBuffer({
        label: "buffer10394",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10394, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10394, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10339, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndirect(buffer10119, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10344, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10148, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10250, 0);
    render_pass_encoder1070.drawIndirect(buffer1025, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10198, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10391, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1000.setIndexBuffer(buffer10101, "uint16");
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10218, 0);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10232, 0);
    render_pass_encoder1071.drawIndirect(buffer10313, 0);
    const buffer10395 = device10.createBuffer({
        label: "buffer10395",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10396 = device10.createBuffer({
        label: "buffer10396",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10152 = device10.createBindGroup({
        label: "bind_group10152",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10395,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10396,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10152);
    render_pass_encoder1060.drawIndexedIndirect(buffer10226, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10255, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10143, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer107, ]);
    render_pass_encoder1060.drawIndirect(buffer10322, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10316, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10108, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10334, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndirect(buffer10387, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1060.drawIndirect(buffer10246, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10262, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10392, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1061.drawIndexedIndirect(buffer10324, 0);
    render_pass_encoder1030.drawIndirect(buffer10340, 0);
    render_pass_encoder1010.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10257, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1062, "uint16");
    const buffer10397 = device10.createBuffer({
        label: "buffer10397",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10398 = device10.createBuffer({
        label: "buffer10398",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10153 = device10.createBindGroup({
        label: "bind_group10153",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10397,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10398,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10153);
    render_pass_encoder1000.end();
    render_pass_encoder1011.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10101, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1059, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00125, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00125, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10204, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10283, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1041.drawIndirect(buffer10246, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10307, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1061.drawIndirect(buffer10229, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1061.drawIndirect(buffer10139, 0);
    render_pass_encoder1071.drawIndirect(buffer10226, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer10222, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10227, 0);
    device50.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer10361, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10228, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10330, 0);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1061.drawIndirect(buffer10101, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.drawIndirect(buffer10221, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1041.drawIndirect(buffer10167, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1070.setIndexBuffer(buffer10235, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10325, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10258, "uint16");
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1011.setIndexBuffer(buffer10180, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10399 = device10.createBuffer({
        label: "buffer10399",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10399, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10399, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1070.drawIndirect(buffer10160, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10168, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer10270, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer10165, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10193, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.end();
    const buffer10400 = device10.createBuffer({
        label: "buffer10400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10401 = device10.createBuffer({
        label: "buffer10401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10154 = device10.createBindGroup({
        label: "bind_group10154",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10401,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10154);
    const buffer10402 = device10.createBuffer({
        label: "buffer10402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10403 = device10.createBuffer({
        label: "buffer10403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10155 = device10.createBindGroup({
        label: "bind_group10155",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10403,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10155);
    render_pass_encoder1070.drawIndexedIndirect(buffer10263, 0);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1041.drawIndirect(buffer10322, 0);
    render_pass_encoder1000.drawIndirect(buffer10349, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10386, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10222, 0);
    render_pass_encoder1030.drawIndirect(buffer10176, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    device50.queue.submit([]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00126, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00126, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10298, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.drawIndirect(buffer10319, 0);
    const buffer10404 = device10.createBuffer({
        label: "buffer10404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10405 = device10.createBuffer({
        label: "buffer10405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10156 = device10.createBindGroup({
        label: "bind_group10156",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10405,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10156);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10352, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00127, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00127, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndirect(buffer10318, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10100, 0);
    const buffer10406 = device10.createBuffer({
        label: "buffer10406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10407 = device10.createBuffer({
        label: "buffer10407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10157 = device10.createBindGroup({
        label: "bind_group10157",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10407,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10157);
    render_pass_encoder1030.popDebugGroup();
    const buffer10408 = device10.createBuffer({
        label: "buffer10408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10409 = device10.createBuffer({
        label: "buffer10409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10158 = device10.createBindGroup({
        label: "bind_group10158",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10409,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10158);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    const buffer10410 = device10.createBuffer({
        label: "buffer10410",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10411 = device10.createBuffer({
        label: "buffer10411",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10159 = device10.createBindGroup({
        label: "bind_group10159",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10410,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10411,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10159);
    render_pass_encoder1010.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1030.drawIndirect(buffer10160, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1070.drawIndirect(buffer10143, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10222, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1060.drawIndirect(buffer10232, 0);
    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00129,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0043);
    device50.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer10219, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10282, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10247, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1000.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer10220, 0);
    render_pass_encoder1070.drawIndirect(buffer10313, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1060.drawIndirect(buffer10301, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10233, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1010.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10305, 0);
    render_pass_encoder1040.drawIndirect(buffer10330, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10412 = device10.createBuffer({
        label: "buffer10412",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10412, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10412, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10313, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10217, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10205, 0);
    render_pass_encoder1041.drawIndirect(buffer1063, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10237, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10203, 0);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    device00.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10412, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10174, 0);
    render_pass_encoder1071.drawIndirect(buffer10301, 0);
    render_pass_encoder1030.drawIndirect(buffer10322, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1041.drawIndirect(buffer10107, 0);
    device00.queue.submit([]);
    render_pass_encoder1061.setIndexBuffer(buffer10268, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10295, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndirect(buffer10193, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1000.drawIndirect(buffer10134, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1040.drawIndirect(buffer10394, 0);
    render_pass_encoder1010.drawIndirect(buffer10292, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndirect(buffer10116, 0);
    render_pass_encoder1070.drawIndirect(buffer10282, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1033, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.drawIndirect(buffer10322, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer10106, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer103, command_buffer105, command_buffer107, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndirect(buffer10106, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10314, 0);
    render_pass_encoder1060.drawIndirect(buffer10345, 0);
    render_pass_encoder1030.drawIndirect(buffer10306, 0);
    render_pass_encoder1011.drawIndirect(buffer10193, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10242, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.end();
    render_pass_encoder1071.drawIndirect(buffer10289, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10217, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer10366, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer10227, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1060.drawIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndirect(buffer10106, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1010.drawIndirect(buffer10232, 0);
    render_pass_encoder1070.drawIndirect(buffer1063, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1071.drawIndirect(buffer10141, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1070.setIndexBuffer(buffer10151, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1010.setIndexBuffer(buffer10270, "uint16");
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10231, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer10246, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer10214, 0);
    render_pass_encoder1071.drawIndirect(buffer10323, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10181, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1071.drawIndirect(buffer10169, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1080, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10212, "uint16");
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    render_pass_encoder1010.drawIndirect(buffer10400, 0);
    render_pass_encoder1030.drawIndirect(buffer10117, 0);
    render_pass_encoder1011.drawIndirect(buffer10262, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1060.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1030.drawIndirect(buffer10123, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10385, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1010.drawIndirect(buffer10276, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10368, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1070.drawIndirect(buffer10282, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10160, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10256, "uint16");
    device10.queue.submit([command_buffer100, command_buffer108, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10368, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10387, 0);
    render_pass_encoder1070.drawIndirect(buffer10227, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10305, 0);
    render_pass_encoder1011.drawIndirect(buffer10246, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1011.drawIndirect(buffer10378, 0);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.drawIndirect(buffer10323, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1060.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1071.drawIndirect(buffer10275, 0);
    render_pass_encoder1061.drawIndirect(buffer10152, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1071.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10219, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1000.drawIndirect(buffer10306, 0);
    device50.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1070.drawIndirect(buffer10219, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10322, 0);
    const buffer10413 = device10.createBuffer({
        label: "buffer10413",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10414 = device10.createBuffer({
        label: "buffer10414",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10160 = device10.createBindGroup({
        label: "bind_group10160",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10413,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10414,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10160);
    render_pass_encoder1011.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10100, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    device10.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1077, 0);
    compute_pass_encoder1080.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1040.end();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1080.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1030.drawIndirect(buffer10281, 0);
    render_pass_encoder1011.drawIndirect(buffer10169, 0);
    render_pass_encoder1060.drawIndirect(buffer10255, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10415 = device10.createBuffer({
        label: "buffer10415",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10415, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10415, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10115, "uint16");
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    const buffer10416 = device10.createBuffer({
        label: "buffer10416",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10417 = device10.createBuffer({
        label: "buffer10417",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10161 = device10.createBindGroup({
        label: "bind_group10161",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10416,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10417,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10161);
    render_pass_encoder1061.drawIndirect(buffer10322, 0);
    render_pass_encoder1030.drawIndirect(buffer10173, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10394, 0);
    render_pass_encoder1061.drawIndirect(buffer10355, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10195, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10263, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10301, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10323, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10198, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10309, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10390, 0);
    render_pass_encoder1010.drawIndirect(buffer10232, 0);
    render_pass_encoder1000.drawIndirect(buffer10330, 0);
    render_pass_encoder1071.drawIndirect(buffer1076, 0);
    render_pass_encoder1040.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1060.drawIndirect(buffer10242, 0);
    render_pass_encoder1010.drawIndirect(buffer10304, 0);
    render_pass_encoder1041.drawIndirect(buffer10241, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1060.setIndexBuffer(buffer10222, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10149, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10215, 0);
    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00133,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0045);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1071.setIndexBuffer(buffer10203, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00134, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00134, 0);
    render_pass_encoder1011.drawIndirect(buffer10174, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10306, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10330, 0);
    const buffer10418 = device10.createBuffer({
        label: "buffer10418",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10419 = device10.createBuffer({
        label: "buffer10419",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10162 = device10.createBindGroup({
        label: "bind_group10162",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10418,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10419,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10162);
    render_pass_encoder1071.drawIndirect(buffer10219, 0);
    render_pass_encoder1041.drawIndirect(buffer10143, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10419, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer10173, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1030.drawIndirect(buffer10215, 0);
    render_pass_encoder1000.drawIndirect(buffer10364, 0);
    render_pass_encoder1041.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10387, "uint16");
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.drawIndirect(buffer10311, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10314, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00135, 0);
    render_pass_encoder1011.drawIndirect(buffer10259, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10394, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.setIndexBuffer(buffer10371, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1062, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10264, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer10139, 0);
    render_pass_encoder1060.drawIndirect(buffer10275, 0);
    render_pass_encoder1061.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1070.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer10193, 0);
    render_pass_encoder1011.drawIndirect(buffer1063, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1041.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndirect(buffer10399, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1060.drawIndirect(buffer10412, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10143, 0);
    device00.queue.submit([]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1093, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10387, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer10352, "uint16");
    const buffer10420 = device10.createBuffer({
        label: "buffer10420",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10421 = device10.createBuffer({
        label: "buffer10421",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10163 = device10.createBindGroup({
        label: "bind_group10163",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10420,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10421,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10163);
    render_pass_encoder1070.setIndexBuffer(buffer10248, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10323, 0);
    render_pass_encoder1041.drawIndirect(buffer10421, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1073, 0);
    render_pass_encoder1011.drawIndirect(buffer10288, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10270, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1061.drawIndirect(buffer10221, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1070.setIndexBuffer(buffer10311, "uint16");
    render_pass_encoder1070.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.end();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1061.end();
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1030.drawIndirect(buffer10357, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1010.drawIndirect(buffer10235, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10119, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10200, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10307, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10319, 0);
    render_pass_encoder1060.drawIndirect(buffer10337, 0);
    render_pass_encoder1041.drawIndirect(buffer10209, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10216, "uint16");
    const buffer10422 = device10.createBuffer({
        label: "buffer10422",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10423 = device10.createBuffer({
        label: "buffer10423",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10164 = device10.createBindGroup({
        label: "bind_group10164",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10422,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10423,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10164);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1061.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10239, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10362, 0);
    compute_pass_encoder0000.end();
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0046);
    render_pass_encoder1011.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1061.drawIndirect(buffer10308, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10190, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10165, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10420, 0);
    render_pass_encoder1030.drawIndirect(buffer10339, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10388, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10252, 0);
    render_pass_encoder1040.drawIndirect(buffer1077, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1000.drawIndirect(buffer10139, 0);
    render_pass_encoder1061.drawIndirect(buffer10160, 0);
    render_pass_encoder1040.drawIndirect(buffer10330, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndirect(buffer10301, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1041.drawIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1041.end();
    device50.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10401, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10179, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10230, 0);
    render_pass_encoder1040.drawIndirect(buffer1071, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10348, 0);
    render_pass_encoder1060.drawIndirect(buffer10330, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10340, 0);
    render_pass_encoder1070.drawIndirect(buffer10415, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1071.drawIndirect(buffer10287, 0);
    render_pass_encoder1041.drawIndirect(buffer10313, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndirect(buffer10105, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.drawIndirect(buffer10355, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10401, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndirect(buffer10227, 0);
    render_pass_encoder1000.drawIndirect(buffer10415, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1000.drawIndirect(buffer1075, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10242, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1060.drawIndirect(buffer10130, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10347, 0);
    device50.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10327, 0);
    render_pass_encoder1061.drawIndirect(buffer10416, 0);
    render_pass_encoder1011.drawIndirect(buffer10419, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1011.drawIndirect(buffer10361, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer10200, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10305, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10355, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10343, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10242, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1080.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer10274, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10378, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10247, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndirect(buffer10252, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10174, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10412, 0);
    device10.queue.submit([command_buffer105, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1070.setIndexBuffer(buffer10342, "uint16");
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.drawIndirect(buffer10188, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10405, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder1080.end();
    render_pass_encoder1061.setIndexBuffer(buffer10305, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10339, 0);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device50.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer10214, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10407, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer10186, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1011.drawIndirect(buffer10142, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10348, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10424 = device10.createBuffer({
        label: "buffer10424",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10424, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10424, 0);
    render_pass_encoder1061.drawIndirect(buffer10283, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer106, command_buffer107, command_buffer108, ]);
    render_pass_encoder1030.drawIndirect(buffer10281, 0);
    render_pass_encoder1030.drawIndirect(buffer10380, 0);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10342, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10425 = device10.createBuffer({
        label: "buffer10425",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10425, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10425, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10396, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndirect(buffer10351, 0);
    render_pass_encoder1010.drawIndirect(buffer10311, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10113, 0);
    device50.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10218, 0);
    render_pass_encoder1061.drawIndirect(buffer10215, 0);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10405, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10246, 0);
    render_pass_encoder1000.drawIndirect(buffer10204, 0);
    const buffer10426 = device10.createBuffer({
        label: "buffer10426",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10427 = device10.createBuffer({
        label: "buffer10427",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10165 = device10.createBindGroup({
        label: "bind_group10165",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10426,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10427,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10165);
    render_pass_encoder1061.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1093, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1073, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.drawIndirect(buffer10282, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1010.drawIndirect(buffer10362, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10281, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10322, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer10160, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer10103, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.drawIndirect(buffer10244, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10322, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10301, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10148, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1071.drawIndirect(buffer1086, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10157, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1041.drawIndirect(buffer10193, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer10246, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1030.setIndexBuffer(buffer10402, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer1072, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10319, 0);
    device00.queue.submit([]);
    render_pass_encoder1041.end();
    render_pass_encoder1010.drawIndirect(buffer10160, 0);
    render_pass_encoder1041.drawIndirect(buffer1056, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10339, 0);
    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00139,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0047);
    const buffer10428 = device10.createBuffer({
        label: "buffer10428",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10429 = device10.createBuffer({
        label: "buffer10429",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10166 = device10.createBindGroup({
        label: "bind_group10166",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10428,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10429,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10166);
    render_pass_encoder1030.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1070.drawIndirect(buffer10322, 0);
    render_pass_encoder1070.drawIndirect(buffer10387, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer10186, "uint16");
    render_pass_encoder1071.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer10227, 0);
    const buffer10430 = device10.createBuffer({
        label: "buffer10430",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10431 = device10.createBuffer({
        label: "buffer10431",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10167 = device10.createBindGroup({
        label: "bind_group10167",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10430,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10431,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10167);
    render_pass_encoder1030.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1070.drawIndirect(buffer10373, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10234, 0);
    compute_pass_encoder1040.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10156, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10314, 0);
    render_pass_encoder1011.drawIndirect(buffer10412, 0);
    render_pass_encoder1030.drawIndirect(buffer10301, 0);
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1011.drawIndirect(buffer10373, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10324, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10276, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10209, 0);
    render_pass_encoder1071.drawIndirect(buffer10340, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10370, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1071.drawIndirect(buffer10259, 0);
    render_pass_encoder1060.drawIndirect(buffer10105, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1099, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1000.setIndexBuffer(buffer10275, "uint16");
    render_pass_encoder1061.end();
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    compute_pass_encoder1040.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10399, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10301, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10432 = device10.createBuffer({
        label: "buffer10432",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10432, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10432, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10328, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10331, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10339, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1030.drawIndirect(buffer10432, 0);
    const buffer10433 = device10.createBuffer({
        label: "buffer10433",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10434 = device10.createBuffer({
        label: "buffer10434",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10168 = device10.createBindGroup({
        label: "bind_group10168",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10433,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10434,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10168);
    render_pass_encoder1071.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1041.drawIndirect(buffer10160, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1041.drawIndirect(buffer10340, 0);
    render_pass_encoder1040.drawIndirect(buffer10169, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1057, "uint16");
    const buffer10435 = device10.createBuffer({
        label: "buffer10435",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10436 = device10.createBuffer({
        label: "buffer10436",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10169 = device10.createBindGroup({
        label: "bind_group10169",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10435,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10436,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10169);
    render_pass_encoder1030.drawIndirect(buffer10204, 0);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10399, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10282, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1040.drawIndirect(buffer10106, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.drawIndirect(buffer10179, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10193, 0);
    render_pass_encoder1041.drawIndirect(buffer10331, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndirect(buffer10118, 0);
    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00141,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0048);
    render_pass_encoder1061.drawIndirect(buffer10301, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1041.setIndexBuffer(buffer10257, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10363, 0);
    render_pass_encoder1061.drawIndirect(buffer10378, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10324, 0);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1071.drawIndirect(buffer10188, 0);
    render_pass_encoder1070.drawIndirect(buffer10253, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndirect(buffer10275, 0);
    render_pass_encoder1010.drawIndirect(buffer10222, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10377, 0);
    render_pass_encoder1030.drawIndirect(buffer10263, 0);
    render_pass_encoder1010.drawIndirect(buffer10198, 0);
    render_pass_encoder1041.drawIndirect(buffer1085, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer10376, 0);
    render_pass_encoder1070.drawIndirect(buffer10204, 0);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1071.drawIndirect(buffer10259, 0);
    const buffer10437 = device10.createBuffer({
        label: "buffer10437",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10438 = device10.createBuffer({
        label: "buffer10438",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10170 = device10.createBindGroup({
        label: "bind_group10170",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10437,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10438,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10170);
    render_pass_encoder1070.drawIndexedIndirect(buffer10368, 0);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1071.setIndexBuffer(buffer10373, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10437, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10402, 0);
    render_pass_encoder1071.drawIndirect(buffer10390, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10327, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1040.setIndexBuffer(buffer10420, "uint16");
    device20.queue.submit([]);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1041.drawIndirect(buffer10432, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10322, 0);
    render_pass_encoder1061.drawIndirect(buffer1068, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10339, 0);
    const buffer10439 = device10.createBuffer({
        label: "buffer10439",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10440 = device10.createBuffer({
        label: "buffer10440",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10171 = device10.createBindGroup({
        label: "bind_group10171",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10439,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10440,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10171);
    render_pass_encoder1041.drawIndirect(buffer10301, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10216, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10220, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1040.drawIndirect(buffer10340, 0);
    render_pass_encoder1030.drawIndirect(buffer10134, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10404, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1092, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10219, 0);
    render_pass_encoder1041.drawIndirect(buffer10231, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10167, 0);
    render_pass_encoder1070.drawIndirect(buffer10305, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10183, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10258, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1041.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1060.drawIndirect(buffer10134, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10397, 0);
    render_pass_encoder1060.drawIndirect(buffer10392, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10441 = device10.createBuffer({
        label: "buffer10441",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10441, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10441, 0);
    render_pass_encoder1030.drawIndirect(buffer10283, 0);
    const buffer10442 = device10.createBuffer({
        label: "buffer10442",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10443 = device10.createBuffer({
        label: "buffer10443",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10172 = device10.createBindGroup({
        label: "bind_group10172",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10442,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10443,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10172);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10402, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10339, 0);
    render_pass_encoder1011.drawIndirect(buffer10160, 0);
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10215, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1041.drawIndirect(buffer10262, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1011.end();
    device00.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10282, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10387, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10391, "uint16");
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1000.drawIndirect(buffer1098, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1030.drawIndirect(buffer10143, 0);
    render_pass_encoder1011.drawIndirect(buffer10245, 0);
    render_pass_encoder1011.drawIndirect(buffer10368, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10221, 0);
    render_pass_encoder1060.drawIndirect(buffer10246, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10444 = device10.createBuffer({
        label: "buffer10444",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10444, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10444, 0);
    render_pass_encoder1011.drawIndirect(buffer10304, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1080.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1041.end();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10445 = device10.createBuffer({
        label: "buffer10445",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10445, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10445, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10243, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    const buffer10446 = device10.createBuffer({
        label: "buffer10446",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10447 = device10.createBuffer({
        label: "buffer10447",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10173 = device10.createBindGroup({
        label: "bind_group10173",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10446,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10447,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10173);
    render_pass_encoder1070.end();
    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00143,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0049);
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndirect(buffer10215, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10278, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer10352, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10245, 0);
    render_pass_encoder1040.drawIndirect(buffer10263, 0);
    render_pass_encoder1071.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndirect(buffer10112, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10363, 0);
    render_pass_encoder1011.drawIndirect(buffer10232, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10260, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10324, 0);
    render_pass_encoder1061.drawIndirect(buffer10101, 0);
    render_pass_encoder1000.drawIndirect(buffer10263, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10220, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10253, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10342, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10165, 0);
    render_pass_encoder1041.drawIndirect(buffer10134, 0);
    render_pass_encoder1071.drawIndirect(buffer10242, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer10396, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10211, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1071.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1070.drawIndirect(buffer10292, 0);
    render_pass_encoder1010.drawIndirect(buffer1068, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1030.drawIndirect(buffer10218, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10394, 0);
    render_pass_encoder1061.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer10347, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer10445, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10284, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer10322, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1061.drawIndirect(buffer10378, 0);
    device00.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10275, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10320, "uint16");
    const buffer10448 = device10.createBuffer({
        label: "buffer10448",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10449 = device10.createBuffer({
        label: "buffer10449",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10174 = device10.createBindGroup({
        label: "bind_group10174",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10448,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10449,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10174);
    render_pass_encoder1061.setIndexBuffer(buffer10371, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10301, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10445, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10188, 0);
    compute_pass_encoder1040.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1070.drawIndirect(buffer10440, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10178, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10339, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer10445, 0);
    render_pass_encoder1070.drawIndirect(buffer1034, 0);
    render_pass_encoder1041.drawIndirect(buffer10253, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10376, 0);
    render_pass_encoder1010.drawIndirect(buffer10203, 0);
    render_pass_encoder1070.drawIndirect(buffer10266, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10286, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10198, 0);
    render_pass_encoder1011.drawIndirect(buffer10275, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10373, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10450 = device10.createBuffer({
        label: "buffer10450",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10450, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10450, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer10438, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer10410, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1040.drawIndirect(buffer10282, 0);
    render_pass_encoder1040.drawIndirect(buffer10412, 0);
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndirect(buffer10415, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10378, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10128, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1077, 0);
    render_pass_encoder1011.drawIndirect(buffer1076, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer10278, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1061.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10304, 0);
    render_pass_encoder1000.drawIndirect(buffer1076, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10273, 0);
    render_pass_encoder1060.drawIndirect(buffer10283, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1040.drawIndirect(buffer10193, 0);
    compute_pass_encoder1010.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10451 = device10.createBuffer({
        label: "buffer10451",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10451, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10451, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10289, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer10308, 0);
    render_pass_encoder1040.drawIndirect(buffer10232, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1041.drawIndirect(buffer10160, 0);
    render_pass_encoder1060.drawIndirect(buffer10221, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10432, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1076, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer10230, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10331, 0);
    render_pass_encoder1010.drawIndirect(buffer10175, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder1010.drawIndirect(buffer10118, 0);
    render_pass_encoder1071.drawIndirect(buffer10340, 0);
    device10.queue.submit([command_buffer106, command_buffer108, ]);
    render_pass_encoder1061.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    const buffer10452 = device10.createBuffer({
        label: "buffer10452",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10453 = device10.createBuffer({
        label: "buffer10453",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10175 = device10.createBindGroup({
        label: "bind_group10175",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10452,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10453,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10175);
    render_pass_encoder1040.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10346, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10166, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1071.drawIndirect(buffer10378, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10192, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10363, 0);
    render_pass_encoder1000.drawIndirect(buffer10287, 0);
    render_pass_encoder1000.drawIndirect(buffer10183, 0);
    render_pass_encoder1030.drawIndirect(buffer10280, 0);
    render_pass_encoder1060.drawIndirect(buffer10145, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndirect(buffer10415, 0);
    render_pass_encoder1070.drawIndirect(buffer1097, 0);
    const buffer10454 = device10.createBuffer({
        label: "buffer10454",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10455 = device10.createBuffer({
        label: "buffer10455",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10176 = device10.createBindGroup({
        label: "bind_group10176",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10454,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10455,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10176);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1040.end();
    render_pass_encoder1040.drawIndirect(buffer10288, 0);
    render_pass_encoder1000.drawIndirect(buffer10216, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10368, 0);
    device20.queue.submit([]);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1041.drawIndirect(buffer10218, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10135, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1070.end();
    render_pass_encoder1060.drawIndirect(buffer10219, 0);
    render_pass_encoder1000.drawIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndirect(buffer10301, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1071.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10209, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10195, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer10415, 0);
    render_pass_encoder1010.drawIndirect(buffer10438, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1030.drawIndirect(buffer10432, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10301, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10422, "uint16");
    compute_pass_encoder1040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10275, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1041.drawIndirect(buffer1073, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10213, 0);
    render_pass_encoder1071.drawIndirect(buffer10414, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10313, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1061.drawIndirect(buffer10387, 0);
    render_pass_encoder1011.drawIndirect(buffer10427, 0);
    render_pass_encoder1060.drawIndirect(buffer10171, 0);
    render_pass_encoder1030.drawIndirect(buffer10282, 0);
    render_pass_encoder1010.drawIndirect(buffer10213, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10283, 0);
    render_pass_encoder1070.drawIndirect(buffer10378, 0);
    render_pass_encoder1030.drawIndirect(buffer10432, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10451, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1071.drawIndirect(buffer10204, 0);
    render_pass_encoder1070.drawIndirect(buffer10246, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10209, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10362, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer10342, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10441, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10141, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10391, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    const buffer10456 = device10.createBuffer({
        label: "buffer10456",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10457 = device10.createBuffer({
        label: "buffer10457",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10177 = device10.createBindGroup({
        label: "bind_group10177",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10456,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10457,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10177);
    render_pass_encoder1030.drawIndirect(buffer1067, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1073, 0);
    render_pass_encoder1071.drawIndirect(buffer10326, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10193, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10313, 0);
    render_pass_encoder1060.drawIndirect(buffer10266, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10134, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00144, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00144, 0);
    render_pass_encoder1041.drawIndirect(buffer10221, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1030.drawIndirect(buffer10139, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10199, 0);
    render_pass_encoder1010.drawIndirect(buffer10445, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10183, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10444, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10267, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10424, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1061.drawIndirect(buffer1020, 0);
    render_pass_encoder1061.drawIndirect(buffer10159, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10269, 0);
    render_pass_encoder1041.drawIndirect(buffer10123, 0);
    device00.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer10250, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10397, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00145, 0);
    render_pass_encoder1000.drawIndirect(buffer10204, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1071.drawIndirect(buffer10227, 0);
    render_pass_encoder1041.drawIndirect(buffer10339, 0);
    render_pass_encoder1040.drawIndirect(buffer10291, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer10235, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10193, 0);
    const buffer10458 = device10.createBuffer({
        label: "buffer10458",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10459 = device10.createBuffer({
        label: "buffer10459",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10178 = device10.createBindGroup({
        label: "bind_group10178",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10458,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10459,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10178);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1060.drawIndirect(buffer10451, 0);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10339, 0);
    render_pass_encoder1041.drawIndirect(buffer10188, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1041.drawIndirect(buffer1073, 0);
    render_pass_encoder1041.drawIndirect(buffer1069, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.drawIndirect(buffer10443, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10214, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer10401, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.popDebugGroup();
    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00147,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0050);
    render_pass_encoder1000.drawIndirect(buffer10313, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1061.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10460 = device10.createBuffer({
        label: "buffer10460",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10460, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10460, 0);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer10339, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10193, 0);
    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00149,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0051);
    render_pass_encoder1000.end();
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.drawIndirect(buffer10432, 0);
    render_pass_encoder1030.drawIndirect(buffer10227, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndirect(buffer10143, 0);
    render_pass_encoder1000.drawIndirect(buffer10308, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1061.setIndexBuffer(buffer10270, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndirect(buffer10308, 0);
    render_pass_encoder1061.drawIndirect(buffer10160, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndirect(buffer10253, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1040.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer10309, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10439, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10324, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10204, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10362, 0);
    render_pass_encoder1041.drawIndirect(buffer10219, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1041.drawIndexedIndirect(buffer10429, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10223, 0);
    render_pass_encoder1061.drawIndirect(buffer10233, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10411, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10177, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10399, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1040.drawIndirect(buffer10193, 0);
    render_pass_encoder1060.drawIndirect(buffer10399, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10209, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1010.drawIndirect(buffer1076, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1070.end();
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer10355, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1061.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1030.drawIndirect(buffer10248, 0);
    render_pass_encoder1030.drawIndirect(buffer10285, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10364, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10108, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10449, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1040.drawIndirect(buffer10358, 0);
    render_pass_encoder1041.endOcclusionQuery()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1011.setIndexBuffer(buffer10401, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10238, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10105, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer10411, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10226, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10201, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10232, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10394, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10410, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00150, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00150, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1000.drawIndirect(buffer10394, 0);
    render_pass_encoder1030.drawIndirect(buffer10324, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10262, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1061.drawIndirect(buffer10322, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10278, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10270, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10353, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer10368, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10245, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10157, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10461 = device10.createBuffer({
        label: "buffer10461",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10461, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10461, 0);
    render_pass_encoder1030.drawIndirect(buffer10204, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndirect(buffer1078, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10336, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10259, 0);
    render_pass_encoder1000.drawIndirect(buffer10378, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer10232, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndirect(buffer10412, 0);
    render_pass_encoder1030.drawIndirect(buffer10213, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1030.end();
    compute_pass_encoder1080.end();
    render_pass_encoder1061.drawIndirect(buffer10374, 0);
    render_pass_encoder1061.drawIndirect(buffer10242, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1061.drawIndirect(buffer1078, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1071.drawIndirect(buffer10451, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10239, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1060.drawIndirect(buffer10441, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10373, 0);
    device50.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer10444, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10110, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10251, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10330, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10188, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndirect(buffer10289, 0);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10235, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1011.drawIndirect(buffer10307, 0);
    render_pass_encoder1041.drawIndirect(buffer10209, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1030.drawIndirect(buffer10239, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10444, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer10251, 0);
    render_pass_encoder1040.drawIndirect(buffer10199, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10263, 0);
    render_pass_encoder1060.drawIndirect(buffer10283, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10258, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1030.drawIndirect(buffer10222, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10291, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10462 = device10.createBuffer({
        label: "buffer10462",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10462, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10462, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndirect(buffer10215, 0);
    render_pass_encoder1011.drawIndirect(buffer10324, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder1080.popDebugGroup()
    device20.queue.submit([]);
    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00151,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00152,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0052);
    const buffer10463 = device10.createBuffer({
        label: "buffer10463",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10464 = device10.createBuffer({
        label: "buffer10464",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10179 = device10.createBindGroup({
        label: "bind_group10179",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10463,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10464,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10179);
    render_pass_encoder1061.drawIndirect(buffer10215, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10465 = device10.createBuffer({
        label: "buffer10465",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10465, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10465, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10169, 0);
    render_pass_encoder1030.drawIndirect(buffer10278, 0);
    render_pass_encoder1041.drawIndirect(buffer10242, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndirect(buffer10292, 0);
    device50.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1060.drawIndirect(buffer10169, 0);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10330, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10289, 0);
    render_pass_encoder1060.drawIndirect(buffer10236, 0);
    render_pass_encoder1040.drawIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndirect(buffer10311, 0);
    render_pass_encoder1010.drawIndirect(buffer10222, 0);
    render_pass_encoder1070.drawIndirect(buffer10305, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10462, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1041.popDebugGroup();
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1030.end();
    device30.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10348, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10123, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1061.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1089, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1040.end();
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndirect(buffer10304, 0);
    render_pass_encoder1041.drawIndirect(buffer10441, 0);
    render_pass_encoder1000.drawIndirect(buffer10134, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10308, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer10426, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10373, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1061.endOcclusionQuery()
    const buffer10466 = device10.createBuffer({
        label: "buffer10466",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10467 = device10.createBuffer({
        label: "buffer10467",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10180 = device10.createBindGroup({
        label: "bind_group10180",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10466,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10467,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10180);
    render_pass_encoder1070.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndirect(buffer10203, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.drawIndirect(buffer10461, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer10466, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndirect(buffer10184, 0);
    const buffer10468 = device10.createBuffer({
        label: "buffer10468",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10469 = device10.createBuffer({
        label: "buffer10469",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10181 = device10.createBindGroup({
        label: "bind_group10181",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10468,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10469,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group10181);
    const buffer10470 = device10.createBuffer({
        label: "buffer10470",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10471 = device10.createBuffer({
        label: "buffer10471",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10182 = device10.createBindGroup({
        label: "bind_group10182",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10470,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10471,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10182);
    render_pass_encoder1011.drawIndirect(buffer10305, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10400, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10263, 0);
    render_pass_encoder1070.drawIndirect(buffer10193, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder2011.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10324, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer10368, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10470, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10339, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1099, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10472 = device10.createBuffer({
        label: "buffer10472",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10472, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10472, 0);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10156, 0);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10248, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10233, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1060.drawIndirect(buffer10396, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10445, 0);
    render_pass_encoder1040.drawIndirect(buffer10462, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10414, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10340, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer10441, 0);
    render_pass_encoder1030.drawIndirect(buffer10169, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10230, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10283, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10415, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10192, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10273, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10314, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10219, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer107, ]);
    render_pass_encoder1070.drawIndirect(buffer10328, 0);
    render_pass_encoder1011.drawIndirect(buffer10193, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10143, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10473 = device10.createBuffer({
        label: "buffer10473",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10473, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10473, 0);
    render_pass_encoder1000.drawIndirect(buffer10424, 0);
    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00154,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0053);
    const buffer10474 = device10.createBuffer({
        label: "buffer10474",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10475 = device10.createBuffer({
        label: "buffer10475",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10183 = device10.createBindGroup({
        label: "bind_group10183",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10474,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10475,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10183);
    render_pass_encoder1000.setIndexBuffer(buffer10458, "uint16");
    render_pass_encoder1041.end();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer10242, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1072, 0);
    const buffer10476 = device10.createBuffer({
        label: "buffer10476",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10477 = device10.createBuffer({
        label: "buffer10477",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10184 = device10.createBindGroup({
        label: "bind_group10184",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10476,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10477,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group10184);
    render_pass_encoder1011.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    device10.queue.submit([]);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10478 = device10.createBuffer({
        label: "buffer10478",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10478, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10478, 0);
    render_pass_encoder1000.drawIndirect(buffer10227, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10203, 0);
    render_pass_encoder1000.drawIndirect(buffer10234, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10478, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10275, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10387, 0);
    render_pass_encoder1070.drawIndirect(buffer10424, 0);
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10188, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10461, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1061.end();
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer105, ]);
    render_pass_encoder1071.drawIndirect(buffer10246, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10223, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10283, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndirect(buffer10275, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.drawIndirect(buffer10330, 0);
    render_pass_encoder1041.drawIndirect(buffer10460, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10222, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00155, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00155, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10479 = device10.createBuffer({
        label: "buffer10479",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10479, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10479, 0);
    device20.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndirect(buffer10294, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10292, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10308, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    compute_pass_encoder1080.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer10431, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1096, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1071.drawIndirect(buffer10242, 0);
    render_pass_encoder1070.drawIndirect(buffer10253, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10227, 0);
    render_pass_encoder1060.drawIndirect(buffer10143, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndirect(buffer10473, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10307, 0);
    render_pass_encoder1000.drawIndirect(buffer10220, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10303, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10262, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1041.drawIndirect(buffer10203, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10322, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10319, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10227, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10350, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10224, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10445, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.setIndexBuffer(buffer10432, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10254, 0);
    device50.queue.submit([]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10368, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10313, 0);
    render_pass_encoder1061.end();
    compute_pass_encoder1010.end();
    render_pass_encoder1010.popDebugGroup();
    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00156,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00157,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0054);
    render_pass_encoder1011.drawIndexedIndirect(buffer10425, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer10142, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10446, 0);
    render_pass_encoder1071.drawIndirect(buffer10308, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.setIndexBuffer(buffer10317, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer10409, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer10246, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10324, 0);
    render_pass_encoder1011.drawIndirect(buffer10134, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10223, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10451, 0);
    const buffer10480 = device10.createBuffer({
        label: "buffer10480",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10481 = device10.createBuffer({
        label: "buffer10481",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10185 = device10.createBindGroup({
        label: "bind_group10185",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10480,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10481,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10185);
    render_pass_encoder1070.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10373, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10363, 0);
    render_pass_encoder1040.end();
    device10.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10455, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10197, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10465, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10134, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00158, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00158, 0);
    device50.queue.submit([]);
    render_pass_encoder1030.end();
    device50.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndirect(buffer1076, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10450, 0);
    compute_pass_encoder1080.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1010.drawIndirect(buffer10387, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10206, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10175, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer10238, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndirect(buffer1077, 0);
    device20.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10305, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10325, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10473, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1060.drawIndirect(buffer10105, 0);
    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00160,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0055);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer10275, 0);
    device10.queue.submit([command_buffer101, command_buffer104, command_buffer106, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10266, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10379, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10441, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10338, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10395, 0);
    render_pass_encoder1000.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10378, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10246, 0);
    render_pass_encoder1061.drawIndirect(buffer10262, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10288, 0);
    render_pass_encoder1000.drawIndirect(buffer10378, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10112, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer10253, 0);
    render_pass_encoder1011.drawIndirect(buffer10215, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10379, 0);
    render_pass_encoder1071.drawIndirect(buffer10339, 0);
    render_pass_encoder1010.drawIndirect(buffer10451, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndirect(buffer10425, 0);
    render_pass_encoder1040.drawIndirect(buffer10227, 0);
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer10482 = device10.createBuffer({
        label: "buffer10482",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10482, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer10482, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10272, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10451, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1060.drawIndirect(buffer10425, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer10222, 0);
    render_pass_encoder1000.drawIndirect(buffer1098, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10390, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10124, 0);
    render_pass_encoder1030.drawIndirect(buffer10107, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer10370, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer10209, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10219, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10483 = device10.createBuffer({
        label: "buffer10483",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10483, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10483, 0);
    render_pass_encoder1041.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer10331, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10483, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10255, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10445, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10321, 0);
    device30.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer10462, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10484 = device10.createBuffer({
        label: "buffer10484",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10484, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10484, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndirect(buffer10393, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10204, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10254, 0);
    render_pass_encoder1011.drawIndirect(buffer10159, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10328, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10475, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1071.drawIndirect(buffer10425, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer10415, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10304, 0);
    render_pass_encoder1061.drawIndirect(buffer10288, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1011.end();
    const buffer10485 = device10.createBuffer({
        label: "buffer10485",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10486 = device10.createBuffer({
        label: "buffer10486",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group10186 = device10.createBindGroup({
        label: "bind_group10186",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10485,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10486,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group10186);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer10275, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10327, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10215, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1041.drawIndirect(buffer10253, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10473, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10256, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10283, 0);
    render_pass_encoder1011.drawIndirect(buffer10322, 0);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1070.drawIndirect(buffer10323, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10356, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer10243, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10105, 0);
    compute_pass_encoder1080.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10317, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10253, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10214, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10425, 0);
    render_pass_encoder1030.drawIndirect(buffer1089, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10323, 0);
    render_pass_encoder1000.drawIndirect(buffer10428, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10371, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10445, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1010.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10220, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10237, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1061.end();
    render_pass_encoder1011.drawIndirect(buffer10275, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10455, "uint16");
    render_pass_encoder1041.drawIndirect(buffer10209, 0);
    device20.queue.submit([]);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
}