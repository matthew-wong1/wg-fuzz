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
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array0 = new Float32Array([0.0, -0.75, -0.75, 0.0, -1.0, -1.0, 1.0, 0.5, -1.0, -0.25, 1.0, -0.5, 0.5, 0.25, 0.5, 0.75, 0.75, 1.0, -1.0, 0.0, 0.0, -0.25, -1.0, -0.5, 0.75, -1.0, -0.25, 0.75, 0.5, -1.0, 0.0, 0.5, -0.25, -0.5, 0.75, 0.25, 0.25, -0.25, -1.0, -0.25, 1.0, 0.25, 0.5, 0.75, 0.0, -1.0, -1.0, -0.75, 0.25, 1.0, -0.75, 0.0, -0.5, -0.25, -1.0, -1.0, -0.25, 0.25, -1.0, 0.25, 0.75, -0.25, 0.5, -0.5, -1.0, -1.0, 0.0, -0.5, 1.0, 0.0, 0.25, -0.75, -0.25, -1.0, 0.0, 0.25, -0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.0, -0.5, 0.5, -0.5, -1.0, -0.75, 0.0, 1.0, -0.5, 0.5, 0.75, 1.0, 0.0, 0.75, -0.75, 0.75, -0.5, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array1 = new Float32Array([0.5, 0.25, 0.5, -0.25, -0.25, 1.0, -0.75, 0.5, 0.75, -0.25, 0.75, 0.25, -0.75, -0.75, 0.75, 0.0, 1.0, 0.5, 0.75, 0.75, 0.75, 0.25, -0.75, -1.0, -0.75, -1.0, -0.5, -0.5, 0.0, 0.25, 0.75, -1.0, -0.75, 0.25, 1.0, 0.75, -0.5, -0.5, 1.0, -0.5, 1.0, -0.75, 1.0, -0.5, 0.25, 0.5, 0.5, 0.5, -0.5, 0.5, -1.0, -0.5, 0.5, 0.25, -1.0, 0.0, 1.0, 1.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.25, 0.5, 0.75, -1.0, 0.5, 0.25, 1.0, -0.25, -1.0, -0.5, -0.25, 0.75, -0.75, 0.0, 0.0, 0.5, 0.0, -1.0, 0.75, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -1.0, 0.25, 0.5, 0.25, -0.75, 0.5, -0.25, -1.0, -0.75, 1.0, 0.25, -1.0, ]);
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
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
    query000.destroy()
    device10.pushErrorScope("out-of-memory");
    
    
    query002.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const array2 = new Float32Array([-1.0, -0.25, 0.75, 0.25, 0.5, 0.75, -1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.0, 0.0, -0.75, -0.25, 0.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.75, -0.25, 1.0, -0.25, -0.5, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, 0.5, -0.75, 1.0, 0.25, 0.25, -1.0, -0.25, -0.25, 0.0, -0.25, -0.75, 0.5, 0.25, 0.0, -0.25, 1.0, -0.75, 0.0, -0.75, -1.0, -0.5, -0.75, 0.0, -0.25, -0.25, 0.25, 1.0, -0.25, -0.5, -0.5, -0.75, 0.75, 0.75, -0.75, 1.0, 0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.75, -0.25, -1.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.25, -0.25, -0.25, -1.0, -0.5, 0.5, 1.0, -0.25, -1.0, -0.5, -0.25, -0.75, -0.25, 1.0, -0.75, -1.0, -0.25, -0.75, ]);
    query002.destroy()
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder102.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder100.setPipeline(render_pipeline100);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder103.insertDebugMarker("mymarker");
    device00.pushErrorScope("out-of-memory");
    
    query103.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query103.destroy()
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query101.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    compute_pass_encoder1010.popDebugGroup()
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query200.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder200.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    query103.destroy()
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    query102.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    
    
    query001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query103.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query200.destroy()
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder100.popDebugGroup();
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_bundle_encoder101.setVertexBuffer(0, buffer102);
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([-0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 1.0, 0.75, -0.25, 1.0, 1.0, -0.25, -0.25, -0.25, -0.75, 0.75, 0.25, 0.25, -0.25, 0.5, -0.5, -0.5, -1.0, -1.0, 0.0, 0.0, 1.0, 0.0, -0.25, 0.25, 0.5, -0.5, 0.25, 0.25, 0.75, -0.25, 1.0, 0.75, -0.25, -0.25, -0.25, -0.25, -0.25, 1.0, 0.0, 0.75, 0.75, -0.25, 0.5, 0.25, -0.25, 0.5, -0.75, -0.75, 0.5, -0.25, 1.0, 0.25, -0.5, -0.5, -0.75, -0.75, 0.0, 1.0, -0.5, 0.0, 0.0, -0.5, -0.75, 0.25, -0.25, 0.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.25, 0.25, -0.75, -1.0, -1.0, 1.0, 0.0, 0.5, 0.0, -0.75, -0.5, -1.0, -0.5, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, 1.0, 0.5, 0.0, 1.0, ]);
    query103.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
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
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    query003.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    device50.pushErrorScope("internal");
    query102.destroy()
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query300.destroy()
    
    
    command_encoder000.clearBuffer(buffer000);
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder1010.popDebugGroup()
    
    
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    query003.destroy()
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    query003.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    query003.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    device60.pushErrorScope("internal");
    query300.destroy()
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder102.setPipeline(render_pipeline105);
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder102.popDebugGroup()
    command_encoder200.clearBuffer(buffer200);
    command_encoder102.insertDebugMarker("mymarker");
    
    
    command_encoder202.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer100,
        0
    )
    command_encoder200.popDebugGroup()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder101.draw(3);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    query200.destroy()
    compute_pass_encoder1030.popDebugGroup()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.popDebugGroup();
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
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    query100.destroy()
    compute_pass_encoder6000.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    compute_pass_encoder1010.popDebugGroup()
    query500.destroy()
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
    
    query000.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder103.setPipeline(render_pipeline102);
    
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    query001.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    query101.destroy()
    
    query001.destroy()
    
    command_encoder001.pushDebugGroup("mygroupmarker")
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
    command_encoder000.clearBuffer(buffer000);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    command_encoder001.clearBuffer(buffer000);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.popDebugGroup();
    
    
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.popDebugGroup();
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    
    
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder6000.popDebugGroup()
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder103.setBindGroup(0, bind_group101);
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    query201.destroy()
    
    query105.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device20.pushErrorScope("validation");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    command_encoder104.resolveQuerySet(
        query106,
        0,
        32,
        buffer104,
        0
    )
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query002.destroy()
    command_encoder104.clearBuffer(buffer103);
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder301.popDebugGroup();
    command_encoder001.insertDebugMarker("mymarker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder102.popDebugGroup();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder001.popDebugGroup()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    command_encoder001.clearBuffer(buffer003);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    query104.destroy()
    compute_pass_encoder5000.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder302.popDebugGroup();
    
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    
    query105.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    query200.destroy()
    query300.destroy()
    
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    command_encoder000.clearBuffer(buffer004);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    command_encoder204.insertDebugMarker("mymarker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    query104.destroy()
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_bundle_encoder101.popDebugGroup();
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    query104.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device10.queue.writeBuffer(buffer106, 0, array2, 0, array2.length);
    command_encoder001.insertDebugMarker("mymarker");
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder502.clearBuffer(buffer502);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder204.insertDebugMarker("mymarker");
    
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder103.insertDebugMarker("marker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    query001.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder002.clearBuffer(buffer001);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const array4 = new Float32Array([0.5, 0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -1.0, 0.25, -0.5, 0.5, -0.75, 0.0, 0.0, -0.5, -0.5, 1.0, -0.25, 0.25, -0.25, -0.75, -0.25, 0.25, 0.5, -0.25, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, 1.0, -0.25, 1.0, -0.75, -0.75, 0.0, -0.5, -0.75, -0.5, -1.0, 0.5, 0.25, 1.0, -0.25, 0.75, -1.0, -1.0, 0.0, 0.5, -0.5, -0.5, -0.75, 0.0, 0.0, 0.25, -0.75, 0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 1.0, 1.0, -1.0, 0.75, 0.0, 0.75, -0.75, -0.5, -0.5, -0.75, 0.75, 0.25, 0.5, 0.75, 0.0, 0.0, 0.75, 1.0, 0.25, 0.5, 0.75, 0.5, 0.0, 0.0, -0.5, 0.25, -0.25, 0.75, -0.75, -0.25, 0.25, -0.75, 0.25, -1.0, 0.0, 0.75, 0.75, ]);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    device00.pushErrorScope("validation");
    query100.destroy()
    compute_pass_encoder2020.popDebugGroup()
    render_bundle_encoder102.popDebugGroup();
    
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    command_encoder203.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    command_encoder001.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
}