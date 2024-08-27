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
    const array0 = new Float32Array([0.5, -1.0, 0.25, -0.75, -0.5, 0.25, 0.25, -0.25, 0.0, 1.0, -0.5, -0.75, 1.0, 0.5, -0.5, -1.0, -0.5, 0.75, -0.5, 0.5, 0.75, 0.25, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, 0.5, 0.75, -0.5, 0.0, -0.25, 0.0, 0.25, 0.75, 0.0, -0.5, 0.75, -1.0, 0.0, 0.5, -0.5, -1.0, 1.0, 0.75, -0.25, -1.0, 0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.5, 0.0, -0.5, 0.75, 0.75, 0.25, -1.0, -0.75, -1.0, -0.25, -1.0, 0.75, 1.0, 0.25, 0.5, -1.0, -0.5, -0.5, 1.0, -1.0, 0.25, 1.0, -0.25, 0.5, 0.0, -0.75, -0.5, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, -0.25, -0.5, 0.0, -1.0, 0.25, 0.25, -0.75, 0.0, -0.5, 0.0, 0.75, 1.0, 0.75, ]);
    const array1 = new Float32Array([1.0, 0.25, 0.0, -1.0, 1.0, 0.5, 1.0, 1.0, -1.0, -0.5, 0.75, 0.5, 1.0, -0.75, -0.75, -1.0, -0.5, 0.5, 1.0, 0.0, 0.5, -1.0, 0.5, -1.0, 1.0, -0.25, -0.75, -0.75, 0.0, -0.5, 0.0, -0.5, -0.75, -0.75, -0.5, 0.75, -1.0, -0.5, 0.75, -0.75, 0.5, -0.5, 0.75, -1.0, -0.5, -0.25, 1.0, 0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.0, -0.25, -1.0, 0.0, -0.5, -0.25, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.75, -1.0, 1.0, -0.5, 0.5, 0.25, 0.5, -0.75, 0.0, -1.0, -0.75, 0.5, 1.0, 0.5, -1.0, 1.0, 0.75, 0.5, -1.0, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, -0.75, 0.5, 1.0, ]);
    
    
    
    
    const array2 = new Float32Array([-0.25, -0.5, -1.0, 0.75, -1.0, -0.5, 0.5, -0.75, 1.0, -0.25, -1.0, -0.75, 0.0, 0.75, -0.25, 0.0, -0.75, -0.75, 0.5, -0.75, -0.5, 1.0, -0.5, 1.0, -0.5, 0.0, -0.5, 0.75, 0.75, 1.0, 0.75, 0.5, 0.75, -0.5, -0.5, -0.25, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, -0.25, -0.25, -0.5, 0.25, 1.0, 0.0, -0.25, 0.25, 0.5, -0.25, 1.0, -0.5, -0.5, 0.75, 0.0, 0.75, -0.5, -0.75, 1.0, -0.75, 0.75, 1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.75, -0.5, 0.75, -0.25, -0.5, -0.5, -0.75, -0.5, 0.5, 1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.75, 1.0, -1.0, 0.5, 0.25, -1.0, 0.5, -0.25, 0.75, 0.5, -0.75, 0.5, 0.25, 0.0, ]);
    const array3 = new Float32Array([0.0, 0.5, 1.0, -1.0, -0.75, -0.5, 1.0, 1.0, 0.5, 0.0, 0.5, 0.0, -0.75, -1.0, 0.0, 0.75, -0.75, 0.75, -0.5, -1.0, 0.75, 0.25, 0.5, 0.75, -1.0, 0.5, 1.0, -0.75, -0.75, 0.5, -0.25, 0.25, 1.0, -0.25, 0.0, 0.5, -1.0, -0.75, 0.75, -1.0, 1.0, 0.5, 0.25, -0.5, -0.5, 0.25, -0.25, 1.0, 0.5, 1.0, 1.0, 0.5, -0.5, 1.0, 0.0, 0.0, 0.25, -0.5, -0.75, 0.25, 0.25, 0.0, 0.0, -0.75, 0.75, -0.75, -0.75, -0.5, -1.0, 1.0, 0.75, -0.25, 0.25, 0.75, 0.0, -0.5, 0.25, -0.75, -0.75, -0.75, -0.5, -0.75, -0.25, 0.25, -1.0, -0.25, -1.0, 1.0, -1.0, -0.5, 0.75, 0.0, -0.5, -1.0, 1.0, 0.0, 0.75, 1.0, 0.75, 0.0, ]);
    
    
    
    
    const array4 = new Float32Array([-0.5, 0.0, -0.25, 0.0, -0.25, -0.5, -0.75, -0.25, -0.75, -0.5, 0.0, 0.75, 1.0, 0.0, -0.25, 0.25, 0.0, 0.25, 0.75, -0.25, -0.75, 0.0, 1.0, 0.25, 0.25, 0.5, -0.25, -0.5, 0.75, -0.25, 0.25, 0.5, -0.75, 0.5, 0.5, 0.75, 1.0, 0.75, -0.25, -0.75, -1.0, 0.5, 1.0, 0.5, -0.25, 0.75, 0.0, -0.5, 0.25, 0.25, 0.5, -0.5, -0.75, 0.0, 0.0, 0.75, 0.25, -0.5, 0.75, 0.0, 1.0, 0.25, -1.0, -0.5, -0.5, -1.0, 0.25, 0.75, -0.25, 0.75, 1.0, -0.75, 0.25, -0.75, -0.5, 1.0, -1.0, -0.25, -0.75, 1.0, 0.75, -1.0, 0.0, 0.0, 0.0, -0.75, 1.0, -0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -0.25, -0.25, 0.5, -0.25, 1.0, 0.5, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array5 = new Float32Array([-0.75, 0.5, -0.75, 0.25, -0.25, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, -0.25, 0.5, -0.25, 0.0, -0.75, 1.0, 0.25, 0.5, 0.25, -0.5, 0.0, -0.25, -0.5, -1.0, 1.0, 0.25, -0.75, -0.75, -1.0, -1.0, 0.75, -1.0, -0.25, 0.75, -1.0, 1.0, 1.0, 0.75, 0.75, 0.0, 1.0, -0.25, -1.0, -0.75, 0.75, 0.5, -0.5, 0.25, 0.25, -0.5, -0.25, 0.75, 0.25, 0.5, 1.0, 1.0, -0.25, -0.75, 0.0, 0.75, -0.75, 0.5, 1.0, -0.5, 0.5, 1.0, 0.25, 0.25, 1.0, -0.75, -1.0, -0.75, 1.0, 0.5, 1.0, 1.0, 0.75, 0.0, 0.0, -0.25, -0.5, -1.0, 0.0, -0.5, -0.75, -0.5, -0.5, 0.5, 0.0, 0.5, 0.25, 0.5, -1.0, 1.0, 0.5, -0.75, -0.25, -0.25, 0.25, ]);
    
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_buffer001 = command_encoder001.finish();
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query001.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device00.pushErrorScope("validation");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
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
    const command_buffer003 = command_encoder003.finish();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    query001.destroy()
    query000.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    const array6 = new Float32Array([0.25, 0.25, 0.25, -0.5, 0.5, 0.0, -0.25, 0.0, -1.0, 0.75, -1.0, 1.0, 0.5, -1.0, -1.0, 0.0, 0.5, 0.25, 0.75, -1.0, 0.5, -0.5, -1.0, 1.0, -0.75, -0.5, 0.5, 0.75, 1.0, -1.0, -0.75, 0.5, -0.75, -0.5, -0.5, 0.25, -1.0, -0.75, -0.75, 1.0, 0.75, 0.25, 0.5, 0.0, -1.0, 0.75, 0.75, -1.0, -0.5, -0.5, -0.5, -0.25, 0.0, 0.0, 0.25, 0.75, 0.25, 0.5, -0.25, 1.0, 0.75, 0.25, 0.0, 1.0, 0.5, -0.25, 0.25, -0.25, 0.25, 1.0, 0.25, 0.5, 0.5, -0.75, -0.25, -0.75, -0.25, -1.0, 0.5, -1.0, 1.0, 1.0, 0.25, 0.25, -1.0, 1.0, 0.75, 0.25, -0.25, 0.0, -0.75, -0.25, -0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 0.0, -0.25, ]);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    command_encoder005.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    query000.destroy()
    
    command_encoder005.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    query002.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    command_encoder101.pushDebugGroup("mygroupmarker")
    query003.destroy()
    
    command_encoder005.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    buffer001.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    compute_pass_encoder0040.popDebugGroup()
    command_encoder005.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    device00.pushErrorScope("validation");
    device10.pushErrorScope("out-of-memory");
    
    buffer000.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer100.destroy()
    
    
    query004.destroy()
    const command_buffer004 = command_encoder004.finish();
    command_encoder005.popDebugGroup()
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    compute_pass_encoder0040.insertDebugMarker("marker")
    query001.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array7 = new Float32Array([0.5, 0.75, 0.75, 1.0, -1.0, 0.75, 0.5, 0.5, -0.5, 0.0, 0.75, -0.5, -0.5, -1.0, 1.0, 0.5, -0.25, -0.25, 0.25, -0.5, 0.25, -0.75, 0.75, -1.0, 0.5, -0.5, -0.75, 0.75, -0.75, 0.75, -0.5, 0.0, -0.5, 0.0, 0.25, -0.25, -0.75, -0.25, 0.75, -0.75, 0.75, 0.75, 1.0, 0.0, 0.5, -1.0, 0.75, -0.5, -0.75, 0.5, -0.75, -0.5, -1.0, -0.25, -0.25, 1.0, 1.0, -0.5, -0.25, -1.0, 0.75, 0.75, -1.0, -0.75, -1.0, 0.75, 0.0, -0.5, -0.25, 0.5, -0.25, -1.0, -1.0, 0.25, -1.0, 0.5, 0.5, -0.75, -0.25, -0.75, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.75, 0.25, -0.5, 0.0, 0.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.75, -0.25, 0.0, ]);
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    command_encoder101.popDebugGroup()
    command_encoder000.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    compute_pass_encoder0040.insertDebugMarker("marker")
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture002.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    texture000.destroy();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder102.insertDebugMarker("mymarker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const command_buffer100 = command_encoder100.finish();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    command_encoder101.popDebugGroup()
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer002.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    command_encoder007.insertDebugMarker("mymarker");
    query001.destroy()
    buffer300.destroy()
    render_bundle_encoder002.popDebugGroup();
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query004
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    texture300.destroy();
    query004.destroy()
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
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
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_pass_encoder0070.insertDebugMarker("marker");
    compute_pass_encoder1020.popDebugGroup()
    texture003.destroy();
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_bundle_encoder001.popDebugGroup();
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
        occlusionQuerySet: query002
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    buffer005.destroy()
    render_pass_encoder0090.setPipeline(render_pipeline009);
    render_pass_encoder0000.setPipeline(render_pipeline004);
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0070.insertDebugMarker("marker");
    
    
    const command_buffer101 = command_encoder101.finish();
    buffer004.destroy()
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder007.copyBufferToBuffer(
        buffer005,
        0,
        buffer007,
        0,
        400
    );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query003
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0020.setStencilReference(1);
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_pass_encoder0080.executeBundles([])
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0020.setPipeline(render_pipeline009);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1020.popDebugGroup()
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
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0080.executeBundles([])
    render_pass_encoder0050.setPipeline(render_pipeline000);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0090.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    render_pass_encoder0070.setPipeline(render_pipeline007);
    render_pass_encoder0070.setStencilReference(1);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    compute_pass_encoder0050.insertDebugMarker("marker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    texture001.destroy();
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    texture001.destroy();
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline009.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0080.setPipeline(render_pipeline003);
    command_encoder005.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0091 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0091",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0091.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    device40.destroy();
    
    buffer101.destroy()
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
    
    const array8 = new Float32Array([0.75, -1.0, 1.0, -0.75, -0.5, 0.0, 1.0, 0.5, -0.5, 0.5, 0.25, -0.25, 0.0, -0.5, 1.0, 1.0, 0.75, 0.25, 1.0, 0.0, 0.5, 0.5, -0.5, 0.25, 0.0, 0.25, -0.5, -0.5, -0.75, 0.25, 0.0, 0.0, 0.25, 0.5, 0.5, 0.0, 0.5, 0.75, -0.75, 1.0, -0.75, -0.75, 1.0, -1.0, 0.5, 0.75, 0.25, 0.25, -0.5, 0.0, 1.0, -0.75, -0.5, -0.75, 1.0, 0.25, 0.0, 0.75, 0.75, 0.5, -0.5, -0.25, 0.25, -1.0, 0.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.5, 0.0, 0.25, -0.75, -0.25, -0.25, -0.25, 0.0, 0.0, 0.0, -1.0, 1.0, -0.5, -0.75, 0.25, 0.5, 0.0, -0.5, -0.75, 0.0, 0.25, 0.25, 0.75, 0.5, 0.5, -0.5, 0.5, -0.75, -0.25, 0.5, ]);
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
    render_pass_encoder1040.setPipeline(render_pipeline100);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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

    render_pass_encoder1040.setBindGroup(0, bind_group100);
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1040.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1040.setStencilReference(1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    buffer100.destroy()
    
    
    buffer103.destroy()
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.setVertexBuffer(0, buffer006);
    
    
    render_pass_encoder1040.setVertexBuffer(0, buffer100);
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1040.setStencilReference(1);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1040.draw(3);
    texture101.destroy();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder0091.setPipeline(render_pipeline001);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
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
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1050.setPipeline(render_pipeline102);
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
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
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("internal");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    buffer501.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query102.destroy()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
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
        occlusionQuerySet: query100
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    device00.queue.submit([command_buffer006, ]);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.setStencilReference(1);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device50.pushErrorScope("validation");
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
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture300.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.setStencilReference(1);
    const array9 = new Float32Array([0.5, -0.25, 0.25, -0.75, -0.25, 0.5, -0.5, 0.5, -1.0, 1.0, -0.75, 0.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.75, 1.0, 1.0, 0.25, -1.0, 0.0, 0.0, 0.75, 0.25, 0.75, 1.0, -0.5, -0.25, 0.5, 1.0, 0.5, -0.5, 1.0, -0.25, 0.5, 0.5, 0.25, 0.0, -1.0, 1.0, 0.5, 0.5, -0.25, -1.0, -0.75, 0.25, 0.75, 0.25, 0.0, 0.5, 1.0, 0.25, 0.75, 0.25, 0.0, -0.5, 0.25, -1.0, 1.0, 1.0, 0.5, -1.0, -1.0, -0.75, -0.5, 0.0, 0.0, 1.0, -0.75, 1.0, 0.25, -1.0, -1.0, -0.75, 0.0, -0.5, 0.5, -0.25, -0.25, -1.0, 0.25, 0.25, 1.0, -1.0, -0.75, -0.25, 1.0, -0.5, -0.5, -0.75, 1.0, 0.25, -0.5, 0.25, 0.75, -0.75, -0.5, -0.5, ]);
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1060.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer500.destroy()
    
    
    
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
        layout: render_pipeline101.getBindGroupLayout(0),
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
    render_pass_encoder1060.executeBundles([render_bundle_encoder101, ])
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    
    render_pass_encoder1020.beginOcclusionQuery(1)
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer003);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0091.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    texture103.destroy();
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1061.setPipeline(render_pipeline102);
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.beginOcclusionQuery(0)
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group102);
    render_pass_encoder1060.setPipeline(render_pipeline101);
    render_pass_encoder1021.setPipeline(render_pipeline102);
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_pass_encoder1040.popDebugGroup();
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.endOcclusionQuery()
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group104);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group105);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder1050.setVertexBuffer(0, buffer1011);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.setVertexBuffer(0, buffer100);
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
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

    compute_pass_encoder1030.setBindGroup(0, bind_group107);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group108);
    const command_buffer301 = command_encoder301.finish();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1020, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.setVertexBuffer(0, buffer1016);
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1021.end();
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
    compute_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    const command_buffer107 = command_encoder107.finish();
    render_pass_encoder1061.setVertexBuffer(0, buffer100);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1061.drawIndirect(buffer1018, 0);
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder1020.end();
    render_pass_encoder1050.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1050.end();
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
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1011);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1012);
    compute_pass_encoder1010.end();
    render_pass_encoder1061.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder1060.setVertexBuffer(0, buffer100);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1021.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder1061.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    device00.queue.submit([command_buffer003, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1031, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1060.draw(3);
    render_pass_encoder1061.end();
    device50.queue.submit([]);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1030.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group005);
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1029, 0);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    device10.queue.submit([command_buffer103, command_buffer104, command_buffer106, ]);
    render_pass_encoder1061.drawIndirect(buffer103, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1061.drawIndirect(buffer1020, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1061.setIndexBuffer(buffer109, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0000.setVertexBuffer(0, buffer008);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0020.setVertexBuffer(0, buffer0010);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device50.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1040.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
}