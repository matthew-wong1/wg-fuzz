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
    const array0 = new Float32Array([-0.25, 1.0, -1.0, -0.25, 0.75, 0.75, 0.75, 0.25, -0.5, 0.25, -0.75, 0.5, -1.0, -0.25, -0.75, -0.25, 0.0, 1.0, -1.0, -0.25, 0.25, 0.0, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 0.75, 0.0, 1.0, -1.0, 0.75, -0.75, 1.0, 0.0, 1.0, -0.75, -0.75, -0.75, 0.25, 0.75, 0.5, -0.5, -0.5, 0.75, 0.5, 0.0, 0.75, -1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 0.5, -0.5, 1.0, -0.25, 1.0, 0.0, -0.25, -0.5, -1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 1.0, -1.0, 0.25, -1.0, 0.5, 0.25, -0.25, -0.75, 1.0, 1.0, 1.0, 0.75, -1.0, 1.0, -0.5, 1.0, -0.25, 0.0, 0.75, -0.75, -0.75, 0.5, 0.25, 0.25, 0.25, 0.75, 1.0, -1.0, -0.5, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.75, 0.25, -1.0, -0.25, 0.5, 0.0, 1.0, -1.0, -0.25, 0.0, -0.75, 0.5, 0.0, 1.0, 0.75, 1.0, 1.0, -0.75, 0.0, -0.25, -1.0, 0.0, -0.5, 0.5, 0.25, -0.75, 0.75, 1.0, -0.75, -0.5, 0.25, -0.25, 0.75, -0.5, 0.75, -0.75, -0.75, 0.0, -0.25, -1.0, 0.75, 0.5, -1.0, -0.25, 1.0, 1.0, -0.5, -0.75, 1.0, 0.0, 0.0, 0.75, 1.0, 0.0, -1.0, 0.25, -0.75, 0.25, -1.0, -0.25, -0.5, -0.75, 0.75, -1.0, -1.0, 0.25, -0.75, 0.25, -0.75, 0.5, 0.5, 1.0, 1.0, 0.25, 1.0, 0.75, -0.5, -0.75, 1.0, 0.75, 0.75, -0.25, -0.25, -0.25, 1.0, 0.75, -0.5, 0.0, 1.0, -0.5, -0.25, -0.25, 1.0, -0.75, -0.75, 0.75, 0.25, -1.0, -0.5, 0.5, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query100.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer000.destroy()
    const array2 = new Float32Array([0.75, 0.25, 1.0, 0.0, -0.75, -0.25, -0.75, 0.5, 1.0, 0.0, -0.75, 0.75, 0.75, -1.0, 0.75, 0.75, 1.0, -0.75, -0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.25, -0.75, 0.25, 0.0, -1.0, 1.0, -1.0, 1.0, -0.5, 0.25, 0.0, 0.75, 0.0, -0.75, 0.75, 0.25, 0.0, -0.5, -0.75, 1.0, 1.0, -1.0, -0.75, 0.75, 0.0, 0.5, 0.25, -0.75, -1.0, 1.0, -1.0, 1.0, 0.0, 0.25, -1.0, -0.25, 0.0, -0.5, -0.5, 1.0, -0.5, 1.0, 0.25, -0.75, -0.75, 0.75, -0.75, -1.0, 0.75, -0.75, 0.0, 0.25, 0.5, 1.0, 0.5, 1.0, 1.0, 1.0, -1.0, 0.5, 0.25, 0.75, 0.5, 0.5, 0.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.25, 0.25, -0.5, -0.25, -0.75, 0.75, ]);
    
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query000.destroy()
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    buffer001.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer002.destroy()
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query000.destroy()
    
    const array3 = new Float32Array([0.0, -0.75, -0.5, -0.5, 0.0, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, -1.0, 1.0, -0.25, -0.5, 1.0, -0.25, -1.0, -1.0, 0.0, 0.0, -0.25, -1.0, 0.5, 1.0, 0.25, 0.0, -1.0, -1.0, -0.75, 0.75, -1.0, -0.75, 0.5, 0.25, 0.75, -1.0, 0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 0.0, 1.0, 1.0, -1.0, 0.5, 0.0, -0.5, -0.25, -0.25, 1.0, 0.75, -0.75, -1.0, -0.25, 1.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.25, 1.0, 1.0, 0.5, 0.0, 0.5, 0.0, -0.75, 0.75, 0.0, -0.5, -0.5, -0.5, -0.75, -0.5, 0.0, -1.0, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, 1.0, -1.0, -0.75, -1.0, -0.25, 1.0, -1.0, 0.25, 0.25, -0.25, 0.75, 0.75, ]);
    buffer100.destroy()
    buffer101.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder002.popDebugGroup();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder100.popDebugGroup();
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    query000.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    query101.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const array4 = new Float32Array([0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 1.0, -0.25, -0.75, -0.5, -0.25, 0.75, 0.75, 0.0, 0.5, 1.0, 0.0, -0.5, -0.5, 0.25, -0.75, 1.0, 0.25, 0.25, 0.5, 0.5, 0.5, 0.75, -0.5, 0.25, 1.0, -0.25, 0.0, 0.25, 0.25, 0.75, -1.0, -1.0, 0.5, -0.25, -0.75, 0.0, 0.75, -0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 0.5, 0.0, 0.0, -0.75, 0.75, 1.0, 0.5, 1.0, -0.25, 0.5, -1.0, 1.0, -0.75, -1.0, 0.0, -1.0, 0.25, 1.0, -0.25, -0.25, -0.25, -0.75, -0.5, 1.0, -0.75, 0.0, -0.25, 0.5, -0.25, 0.5, -0.75, 0.0, 0.0, 0.0, 0.25, 0.0, -0.5, -0.75, -0.75, -1.0, -0.5, 0.75, 0.75, -1.0, 0.25, 1.0, -0.25, -0.75, 0.75, 0.5, 1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    buffer004.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    
    render_bundle_encoder002.popDebugGroup();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder100.popDebugGroup();
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_buffer200 = command_encoder200.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer003.destroy()
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    render_bundle_encoder001.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer201.destroy()
    
    
    query000.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    buffer007.destroy()
    
    
    compute_pass_encoder1010.popDebugGroup()
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
    query101.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer006.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer202.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array5 = new Float32Array([-0.25, 1.0, 0.25, -0.75, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.0, 0.5, -0.75, 0.75, 0.25, -0.75, 0.0, 0.25, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, -1.0, -0.5, -0.5, 0.5, 0.5, -0.25, -0.75, -1.0, 0.25, -0.25, 0.0, -0.75, 0.25, 0.0, -0.25, 0.0, -0.25, -0.25, 0.25, 0.75, -1.0, -0.75, -0.25, -0.75, 0.5, 1.0, -0.75, -0.25, -0.5, -0.5, 0.25, 0.75, 0.25, 0.25, 0.25, -0.5, -0.25, -0.75, -0.5, -0.25, 0.25, 0.5, -1.0, 1.0, 0.5, 1.0, -0.75, -0.25, 0.0, -0.5, 0.0, -1.0, 0.25, 0.5, -0.25, 0.75, -0.25, 0.5, -0.5, 1.0, -1.0, 0.5, -0.5, 0.25, -1.0, 0.0, -0.25, -0.75, -0.75, 0.25, 0.5, 1.0, -0.5, 1.0, 0.75, 1.0, ]);
    
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    buffer008.destroy()
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder102.setPipeline(render_pipeline100);
    buffer103.destroy()
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
    buffer0010.destroy()
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer200.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    
    
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
    buffer106.destroy()
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
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
    
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder002.insertDebugMarker("mymarker");
    
    buffer102.destroy()
    compute_pass_encoder1010.popDebugGroup()
    
    buffer104.destroy()
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    
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
    buffer105.destroy()
    
    buffer005.destroy()
    query000.destroy()
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    buffer009.destroy()
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder102.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    
    const command_buffer104 = command_encoder104.finish();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query202.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    buffer109.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    query203.destroy()
    
    
    command_encoder002.clearBuffer(buffer0011);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.popDebugGroup();
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    query001.destroy()
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query202.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    query000.destroy()
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    buffer107.destroy()
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const command_buffer105 = command_encoder105.finish();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.submit([command_buffer104, ]);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    command_encoder003.clearBuffer(buffer0011);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query203.destroy()
    query102.destroy()
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    
    render_bundle_encoder101.popDebugGroup();
    
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    query200.destroy()
    buffer0011.destroy()
    buffer206.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_buffer003 = command_encoder003.finish();
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    
    
    
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    query101.destroy()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder202.popDebugGroup();
    query000.destroy()
    
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    buffer205.destroy()
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    buffer209.destroy()
    command_encoder107.insertDebugMarker("mymarker");
    
    buffer108.destroy()
    
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    
    render_bundle_encoder000.popDebugGroup();
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
    query000.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query204.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const command_buffer202 = command_encoder202.finish();
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    
    
    query000.destroy()
    render_bundle_encoder102.popDebugGroup();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query102.destroy()
    buffer203.destroy()
    buffer207.destroy()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    const command_buffer106 = command_encoder106.finish();
    command_encoder107.insertDebugMarker("mymarker");
    
    
    const command_buffer203 = command_encoder203.finish();
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query201.destroy()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    query102.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    query004.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
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
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    
    buffer204.destroy()
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query101.destroy()
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer108 = command_encoder108.finish();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    const command_buffer107 = command_encoder107.finish();
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, ]);
}