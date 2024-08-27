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
    
    
    
    const array0 = new Float32Array([0.25, -0.75, 0.5, -1.0, 0.75, 1.0, 0.5, 0.75, -0.5, -0.75, 0.75, 1.0, 0.75, 0.0, -0.25, 0.5, 0.75, 1.0, 0.25, -0.75, -1.0, 0.0, 0.25, 1.0, 1.0, 0.25, 1.0, 0.5, 0.0, 0.75, 1.0, -0.5, 0.25, -0.25, -0.75, 0.5, 0.75, 0.25, 0.0, 0.5, 0.5, 0.0, -0.75, 1.0, -0.75, 1.0, 0.75, 0.25, -0.5, 1.0, -0.75, 1.0, 0.5, 0.5, 0.25, -1.0, -0.75, -0.25, -0.25, -0.25, 0.75, 0.0, 0.0, -1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.25, 0.5, -0.75, -0.75, -0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.0, 1.0, -0.75, 1.0, -0.25, 0.75, 1.0, -0.25, 0.0, -0.5, -0.5, -0.25, -1.0, -0.75, 0.5, 1.0, -0.75, -1.0, -1.0, 0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture100.destroy();
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    
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
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder102.insertDebugMarker("mymarker");
    
    device10.pushErrorScope("validation");
    command_encoder101.popDebugGroup()
    
    command_encoder100.popDebugGroup()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
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
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
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
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    
    command_encoder101.clearBuffer(buffer101);
    
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
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
    render_bundle_encoder100.setPipeline(render_pipeline103);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder101.setPipeline(render_pipeline104);
    texture100.destroy();
    
    
    buffer200.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    device20.pushErrorScope("validation");
    
    compute_pass_encoder1020.popDebugGroup()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const array1 = new Float32Array([-0.5, 1.0, -0.25, 0.5, 0.5, -1.0, -0.5, 1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 0.0, 0.25, -0.75, 0.5, 0.0, -0.75, 0.5, 0.25, 1.0, 0.25, 1.0, -0.5, -0.5, 0.25, -0.75, 0.5, 0.75, -0.5, 1.0, 0.75, 0.5, -0.25, -0.25, -0.5, 0.0, 0.75, -0.25, -1.0, 0.25, 0.5, -0.75, 0.5, -0.75, 0.5, 0.0, 0.25, 0.75, -0.5, -0.5, 1.0, 0.5, -0.25, -0.5, 0.75, 0.75, -0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 0.5, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -0.5, 0.5, 0.75, -1.0, -0.25, 0.25, 0.75, 0.25, 0.75, 0.25, 0.75, -0.25, 0.5, 0.0, 1.0, -1.0, 1.0, 0.5, -0.25, -1.0, 1.0, -0.25, 1.0, 1.0, -0.25, 0.25, -0.75, 0.0, 1.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    compute_pass_encoder1000.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder1050.insertDebugMarker("marker")
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
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
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
        occlusionQuerySet: query100
    });
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture300.destroy();
    texture102.destroy();
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([0.0, -0.25, -0.25, 0.25, 0.75, -0.75, -0.25, 0.25, 0.0, 0.25, -0.25, -0.5, -0.5, -0.75, 1.0, 0.0, 0.25, -0.75, -0.75, 0.0, 0.5, 0.5, -0.25, 1.0, 1.0, 0.75, 0.0, 0.25, 0.25, -0.25, -0.75, 0.25, -0.5, 0.0, -1.0, 0.75, 0.0, -1.0, 1.0, -0.5, 1.0, -1.0, 0.0, 0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 0.5, -0.25, 0.0, -0.5, 0.5, -0.5, 0.25, 0.75, -0.5, 0.75, 0.0, 1.0, 1.0, -0.75, -0.75, 0.25, 0.0, 0.25, -0.25, -0.5, -1.0, 0.5, 1.0, 0.75, -0.5, 0.5, -0.5, 0.75, 0.0, -0.75, 0.0, -0.75, -0.75, 0.5, 0.25, 0.0, 0.0, 1.0, -0.75, 0.25, -1.0, 0.75, 1.0, -0.5, 0.0, 0.75, 0.75, 0.75, 0.0, 1.0, 0.25, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.setStencilReference(1);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    query200.destroy()
    render_pass_encoder1020.setPipeline(render_pipeline109);
    
    command_encoder105.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
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
        occlusionQuerySet: query101
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    compute_pass_encoder1030.popDebugGroup()
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query101.destroy()
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
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
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
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline109.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1010.setPipeline(render_pipeline107);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    buffer102.destroy()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    query201.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query101
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
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
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder1040.popDebugGroup()
    
    
    render_pass_encoder1040.setPipeline(render_pipeline107);
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    render_bundle_encoder100.popDebugGroup();
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_pass_encoder1011.insertDebugMarker("marker");
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    
    
    render_pass_encoder1020.setStencilReference(1);
    buffer202.destroy()
    render_pass_encoder1040.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
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
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    render_bundle_encoder201.setPipeline(render_pipeline203);
    
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
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder102.popDebugGroup();
    query300.destroy()
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query101
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder1020.setStencilReference(1);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout104]
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    render_pass_encoder1041.setPipeline(render_pipeline102);
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder103.setPipeline(render_pipeline104);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group103);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer108.destroy()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group104);
    
    
    render_pass_encoder1030.setPipeline(render_pipeline107);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder100.copyBufferToBuffer(
        buffer105,
        0,
        buffer109,
        0,
        400
    );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    query101.destroy()
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setVertexBuffer(0, buffer101);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1010.popDebugGroup();
    command_encoder201.clearBuffer(buffer200);
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
    render_pass_encoder1020.setVertexBuffer(0, buffer1010);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer101.destroy()
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder201.clearBuffer(buffer200);
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    
    buffer105.destroy()
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
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
        occlusionQuerySet: query101
    });
    render_pass_encoder1041.drawIndirect(buffer105, 0);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1010.setPipeline(compute_pipeline107);
    
    render_pass_encoder1040.insertDebugMarker("marker");
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1010.setStencilReference(1);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1031.setPipeline(render_pipeline104);
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query300
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
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
    render_pass_encoder1000.setPipeline(render_pipeline107);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer104.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder1000.setStencilReference(1);
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
    
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder1050.popDebugGroup()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer1010.destroy()
    render_pass_encoder1020.drawIndexed(3);
    query204.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_buffer106 = command_encoder106.finish();
    buffer1013.destroy()
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
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1030.insertDebugMarker("marker")
    buffer100.destroy()
    
    device10.queue.submit([command_buffer106, ]);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer204.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    texture302.destroy();
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder105.clearBuffer(buffer101);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    render_pass_encoder1031.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    query500.destroy()
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_pass_encoder1041.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder103.setBindGroup(0, bind_group107);
    
    device40.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
    render_bundle_encoder202.setPipeline(render_pipeline201);
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.setPipeline(compute_pipeline1010);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_bundle_encoder102.setVertexBuffer(0, buffer107);
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1040.setVertexBuffer(0, buffer107);
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    render_bundle_encoder101.setVertexBuffer(0, buffer1010);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    render_pass_encoder1041.end();
    command_encoder102.copyBufferToTexture(
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
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    buffer1016.destroy()
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group108);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group109);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1021, 0);
    render_pass_encoder1031.setVertexBuffer(0, buffer1017);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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
    render_pass_encoder1011.setVertexBuffer(0, buffer1019);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
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
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group1011);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1011.drawIndirect(buffer102, 0);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1012);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    command_encoder302.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1031.end();
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1011.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
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
        layout: compute_pipeline1010.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder1010.setVertexBuffer(0, buffer1020);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1020.end();
    render_pass_encoder1030.popDebugGroup();
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
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
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1050.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.end();
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    compute_pass_encoder1050.end();
    command_encoder105.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    device40.queue.submit([]);
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
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
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group1015);
    render_pass_encoder1041.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder3010.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1035, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.end();
    render_pass_encoder1030.end();
    device20.queue.submit([]);
    render_pass_encoder3010.draw(3);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1041.drawIndirect(buffer1037, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1038, 0);
    compute_pass_encoder1040.popDebugGroup()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1039, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder3010.end();
    command_encoder101.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1032, 0);
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
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group1017);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder1030.end();
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1000.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1031.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder3010.draw(3);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1042, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer104, 0);
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    device50.queue.submit([]);
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1019);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1041.end();
    device20.queue.submit([command_buffer201, ]);
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
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1020);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1041, 0);
    render_pass_encoder1041.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
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
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.end();
    render_pass_encoder1040.end();
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1021);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1011.endOcclusionQuery()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1052, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
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
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1023);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
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
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1024);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.end();
    render_pass_encoder1011.setIndexBuffer(buffer1025, "uint16");
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1059, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.end();
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.draw(3);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1025);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.end();
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1026);
    render_pass_encoder1041.drawIndexedIndirect(buffer1049, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1040, "uint16");
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1031.setIndexBuffer(buffer1025, "uint16");
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1027);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
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
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline1010.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    device20.queue.submit([]);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1042, 0);
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
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
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    render_pass_encoder1031.drawIndexedIndirect(buffer1030, 0);
    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1071,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1030);
    const command_buffer200 = command_encoder200.finish();
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1031);
    render_pass_encoder1030.end();
    render_pass_encoder1031.end();
    device30.queue.submit([command_buffer301, ]);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1032);
    render_pass_encoder1020.drawIndirect(buffer1059, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1073, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder3010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1059, 0);
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1033);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer1066, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.end();
    render_pass_encoder1000.end();
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
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline107.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1034);
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
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
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1035);
    render_pass_encoder3010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1050.dispatchWorkgroups(100);
    compute_pass_encoder1000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1049, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.popDebugGroup();
    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1084,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1036);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1059, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1037);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    device30.queue.submit([]);
    compute_pass_encoder1030.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1088,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1038);
    render_pass_encoder1000.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1065, 0);
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1039);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder3010.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder3010.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1041.drawIndirect(buffer1064, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1058, 0);
    compute_pass_encoder1040.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1091, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1091, 0);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1031.drawIndirect(buffer109, 0);
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
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1040);
    render_pass_encoder1020.drawIndirect(buffer1059, 0);
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1064, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1064, 0);
    render_pass_encoder1040.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1041.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1094, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1094, 0);
    render_pass_encoder1031.drawIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1010.drawIndirect(buffer1094, 0);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer106, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    compute_pass_encoder1030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer1088, 0);
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1057, 0);
    device10.queue.submit([command_buffer101, ]);
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1041);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1034, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1097, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1097, 0);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1061, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndirect(buffer1091, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
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
        layout: compute_pipeline1010.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1042);
    render_pass_encoder1031.drawIndirect(buffer1058, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder1040.drawIndexed(3);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder1050.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1050.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    device40.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1040.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1097, 0);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer103, command_buffer104, command_buffer105, ]);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10101,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1043);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1085, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1010.drawIndirect(buffer1049, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1049, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1096, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1057, 0);
    compute_pass_encoder1050.end();
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndirect(buffer1097, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.drawIndirect(buffer1077, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1059, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1059, 0);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10102, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10102, 0);
    render_pass_encoder1040.drawIndirect(buffer1038, 0);
    device50.queue.submit([command_buffer500, ]);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1041.drawIndirect(buffer1027, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10103, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10103, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1044);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1031.drawIndirect(buffer1094, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10107,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1045);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1041.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1011.setIndexBuffer(buffer10107, "uint16");
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1097, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3010.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10108, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10108, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer1070, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1061, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1041.setIndexBuffer(buffer10106, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.end();
    device30.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1041.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1057, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1040, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    device50.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    compute_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer10100, 0);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10109, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10109, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1058, "uint16");
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1030.drawIndirect(buffer1063, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer10108, 0);
    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10111,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1046);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1094, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10106, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1040.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1094, 0);
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1047);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndirect(buffer1091, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10102, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer1066, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer10103, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1072, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1058, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10114, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10114, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10103, 0);
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
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1048);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10114, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1030.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1020.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1039, 0);
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
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1049);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    render_pass_encoder3010.draw(3);
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
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1050);
    render_pass_encoder1040.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.end();
    compute_pass_encoder2010.popDebugGroup()
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
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1051);
    render_pass_encoder1041.setIndexBuffer(buffer10113, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder3010.end();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10123, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer10123, 0);
    render_pass_encoder1030.drawIndirect(buffer10118, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
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
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1052);
    render_pass_encoder1041.drawIndirect(buffer1097, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10112, "uint16");
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer10100, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10126, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10126, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer10123, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10128,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1053);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.drawIndirect(buffer1094, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1049, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1000.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10129, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer10129, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1059, 0);
    device50.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1038, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1054);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    device10.queue.submit([command_buffer106, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1084, 0);
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, ]);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1055);
    render_pass_encoder1010.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10108, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1041.drawIndirect(buffer10102, 0);
    render_pass_encoder1040.drawIndirect(buffer10129, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer10108, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10134, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10134, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1040.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndirect(buffer10109, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer10108, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.end();
    device20.queue.submit([]);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1056);
    render_pass_encoder1000.drawIndirect(buffer10105, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndirect(buffer1097, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1091, 0);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1057);
    render_pass_encoder1010.drawIndirect(buffer10124, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer10119, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1081, 0);
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1030.drawIndirect(buffer1098, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    compute_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10109, 0);
    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1058 = device10.createBindGroup({
        label: "bind_group1058",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10140,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1058);
    render_pass_encoder1030.drawIndirect(buffer1094, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10141, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10141, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10142, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10142, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1041.draw(3);
    render_pass_encoder3010.end();
    device20.queue.submit([]);
    render_pass_encoder1041.drawIndirect(buffer10102, 0);
    compute_pass_encoder1050.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10139, 0);
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([]);
    device50.queue.submit([]);
    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
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
                    buffer: buffer10143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10144,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1059);
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer10105, 0);
    device30.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer10108, 0);
    device40.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10141, 0);
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder3010.draw(3);
    render_pass_encoder1030.drawIndirect(buffer10102, 0);
    device30.queue.submit([command_buffer302, ]);
}