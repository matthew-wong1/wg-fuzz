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
    
    const array0 = new Float32Array([-0.5, -0.75, -0.75, 1.0, -1.0, -1.0, -0.5, 0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 0.75, 0.25, 1.0, 0.25, -0.5, -1.0, -0.75, -1.0, -0.25, 0.5, 0.0, -0.5, -0.25, 0.25, 0.75, 0.25, -0.5, 0.5, -0.25, 0.75, -0.75, 0.5, -0.75, 0.25, 0.0, -1.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.5, -0.75, -0.25, 1.0, -1.0, -0.5, -1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 0.25, -0.25, 0.0, -0.75, 1.0, 0.25, -0.75, -0.75, 0.0, 0.75, 0.25, 0.0, -1.0, 0.0, 1.0, -0.25, -1.0, -0.25, 1.0, -1.0, 0.25, -0.25, -0.5, 0.75, 0.5, -0.25, -0.5, -0.5, -1.0, -0.75, -0.5, -1.0, 0.0, -0.75, 0.25, 0.0, -0.75, 0.5, 0.75, -0.5, 0.75, -0.25, 0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer100 = command_encoder100.finish();
    const array1 = new Float32Array([-0.25, 0.75, 0.25, -0.5, 1.0, -0.75, 0.75, 0.75, 0.25, -0.25, 1.0, 1.0, -0.75, -0.25, 0.75, 1.0, 0.75, 0.0, -1.0, 0.25, -0.5, -0.75, 1.0, 1.0, -0.25, 0.0, 0.5, -1.0, 0.75, 0.75, 0.5, 1.0, 0.25, -0.25, -0.5, -0.5, -0.25, 0.75, 0.25, -0.25, -0.75, -0.25, -1.0, 0.0, 0.0, -1.0, 0.25, -0.5, -0.5, 0.0, 0.0, 0.75, -0.75, -0.25, 1.0, 0.25, 0.75, 0.5, 1.0, -1.0, -1.0, 0.0, -0.5, 0.25, 0.0, -0.75, -1.0, 0.5, -0.5, -0.5, 0.25, 0.0, 0.0, 0.5, 0.75, 0.25, -0.25, 1.0, 0.75, -0.75, -1.0, -0.5, 0.5, 0.0, -0.75, 0.75, -1.0, -1.0, 1.0, -1.0, -0.25, 0.25, -1.0, 0.5, -0.75, 0.25, 0.75, -0.75, 0.5, -0.75, ]);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_buffer101 = command_encoder101.finish();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    buffer101.destroy()
    
    const array2 = new Float32Array([-0.25, 1.0, -0.25, 0.5, -0.5, -0.25, -0.5, -0.5, 1.0, -1.0, -0.5, -1.0, 0.0, -0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 0.5, 1.0, 0.25, -0.5, -0.25, 1.0, 0.75, -1.0, -0.5, 1.0, 0.25, -0.5, 0.75, -0.75, 0.0, -0.25, -0.5, -0.25, 0.5, 0.75, 0.5, 0.25, 0.5, -1.0, 0.25, -0.75, 0.0, 0.25, 0.75, -0.25, 0.25, 1.0, -0.25, -0.5, 0.5, 0.0, -0.5, 0.25, 0.25, -0.25, -0.25, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, 0.0, 1.0, 0.5, -1.0, -0.5, 0.75, 0.0, 0.5, 1.0, -0.75, -0.25, 1.0, -0.5, -0.25, -0.75, -0.25, 0.25, 0.0, 0.0, 0.75, -1.0, -0.25, -0.75, 0.25, -0.25, -0.25, 0.25, 0.75, -0.5, -0.25, 0.0, -0.75, 0.5, -0.25, ]);
    device20.pushErrorScope("internal");
    command_encoder102.clearBuffer(buffer100);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    const array3 = new Float32Array([-0.25, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, 0.75, -0.75, 0.5, 0.0, 0.0, -0.5, -1.0, 0.0, 0.25, -1.0, -0.5, 0.25, 0.0, -0.75, -1.0, -1.0, 1.0, -0.75, -0.75, 1.0, 0.5, -0.5, 1.0, 0.25, 0.75, -0.25, -0.5, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.75, -0.75, -0.75, 0.0, 0.0, 0.25, 0.25, -0.75, 0.25, -0.5, -0.25, 0.25, -1.0, -0.75, 1.0, 0.5, 0.5, -0.25, 0.0, -0.25, -0.25, 0.75, 0.0, 1.0, 0.0, 1.0, -0.25, -0.25, 0.0, 0.75, 1.0, 0.0, -0.5, 1.0, -0.75, -0.25, 0.25, -0.75, 0.75, 1.0, -0.75, 1.0, -1.0, -0.5, -1.0, -1.0, -1.0, -0.75, 0.5, 0.0, -0.75, -0.5, -0.25, 0.5, 1.0, -1.0, 0.0, -0.75, 0.5, 0.75, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_buffer103 = command_encoder103.finish();
    const command_buffer201 = command_encoder201.finish();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    
    buffer000.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder000.clearBuffer(buffer001);
    buffer001.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    compute_pass_encoder1020.popDebugGroup()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    buffer102.destroy()
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    command_encoder001.insertDebugMarker("mymarker");
    
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.submit([command_buffer201, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.pushErrorScope("internal");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    const array4 = new Float32Array([-0.75, 0.5, 0.0, -0.75, 1.0, 0.25, 1.0, 0.5, -0.25, -0.25, -1.0, 0.25, 1.0, -1.0, 0.75, -1.0, 0.0, 0.0, -0.5, 0.25, -0.25, -1.0, 1.0, -1.0, -0.75, -0.75, 0.75, 0.75, -0.75, -1.0, 1.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.0, 0.25, -0.75, -0.25, 0.5, 0.25, 0.75, -0.75, -1.0, -0.5, 0.75, -1.0, 0.25, -0.75, 0.25, -1.0, -1.0, 1.0, -0.25, -0.25, -1.0, -1.0, 0.5, 0.25, -0.75, 0.25, 0.25, -1.0, 0.25, -0.5, 1.0, -0.75, 0.25, -1.0, 0.5, 0.25, -0.25, -1.0, -1.0, 0.0, -0.25, 0.0, 0.25, -1.0, -1.0, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 1.0, 0.25, 0.75, -1.0, -1.0, -0.75, -0.5, 0.5, -1.0, 1.0, -1.0, -0.25, -0.75, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    buffer202.destroy()
    command_encoder202.clearBuffer(buffer201);
    compute_pass_encoder1020.popDebugGroup()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder001.popDebugGroup()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder2000.popDebugGroup()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder203.insertDebugMarker("mymarker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.insertDebugMarker("mymarker");
    
    device40.destroy();
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    command_encoder105.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([-0.25, -1.0, -0.25, -0.75, 1.0, -0.25, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, -1.0, 0.25, -1.0, 0.0, -1.0, 0.0, -1.0, -0.75, 0.75, -1.0, -0.75, -0.5, 0.75, -1.0, 0.25, -0.75, -0.5, -0.75, 0.25, 0.25, -0.25, 1.0, -0.75, 0.75, -0.25, -0.25, -0.75, 0.0, -0.25, -1.0, -1.0, -1.0, 0.25, -0.75, 0.25, -0.25, -1.0, 1.0, 0.5, 0.0, -0.75, -0.5, 0.0, -0.5, -0.5, 0.0, -1.0, 0.75, 0.5, 0.25, 0.0, -1.0, -0.25, -0.75, -1.0, -0.25, 1.0, 0.75, -1.0, -0.25, -0.5, -0.25, 0.0, 0.5, 0.25, -1.0, -0.5, -1.0, 0.5, -0.75, -0.25, 0.0, 0.5, 0.5, -1.0, 0.75, -1.0, -0.25, 0.5, -0.25, -0.25, 1.0, 1.0, -0.25, -0.25, 0.75, 0.25, -1.0, ]);
    command_encoder205.pushDebugGroup("mygroupmarker")
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    render_bundle_encoder100.popDebugGroup();
    command_encoder106.clearBuffer(buffer102);
    render_bundle_encoder001.popDebugGroup();
    command_encoder106.insertDebugMarker("mymarker");
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder203.clearBuffer(buffer204);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer204 = command_encoder204.finish();
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    device00.queue.submit([]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    command_encoder205.popDebugGroup()
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
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder203.popDebugGroup()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    buffer201.destroy()
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
    command_encoder000.popDebugGroup()
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.popDebugGroup();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.setPipeline(render_pipeline001);
    buffer002.destroy()
    render_bundle_encoder201.popDebugGroup();
    command_encoder205.copyBufferToBuffer(
        buffer200,
        0,
        buffer200,
        0,
        400
    );
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    buffer003.destroy()
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder202.clearBuffer(buffer201);
    command_encoder000.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder001.clearBuffer(buffer000);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    buffer004.destroy()
    
    command_encoder000.copyBufferToBuffer(
        buffer003,
        0,
        buffer002,
        0,
        400
    );
    compute_pass_encoder1040.popDebugGroup()
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1040.popDebugGroup()
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    device00.queue.submit([command_buffer002, ]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder206.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer206 = command_encoder206.finish();
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    compute_pass_encoder1050.popDebugGroup()
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device20.queue.submit([command_buffer206, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    const array6 = new Float32Array([1.0, -0.75, 1.0, 0.75, 0.25, 0.0, 0.75, 0.5, -0.25, 0.5, 0.25, 0.0, 0.5, -1.0, 1.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.25, -1.0, -1.0, 0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 0.5, -1.0, 0.0, -0.75, -0.75, -0.5, 0.75, 0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.5, -0.75, 1.0, 1.0, -1.0, 1.0, 0.0, 0.75, -1.0, -1.0, 0.5, -0.25, 0.0, 0.0, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, 0.25, 0.25, 0.75, -1.0, -0.5, -0.75, 0.75, -0.5, 0.25, -1.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.75, -1.0, 0.0, -0.5, 1.0, -0.75, -0.75, -0.75, 0.25, 0.5, 0.25, 0.5, 0.5, -1.0, -0.75, -0.25, 0.75, -0.75, 0.75, 0.25, 0.5, 1.0, 0.25, ]);
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    command_encoder108.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder003.clearBuffer(buffer003);
    command_encoder108.insertDebugMarker("mymarker");
    buffer205.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder108.insertDebugMarker("mymarker");
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder1060.popDebugGroup()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.insertDebugMarker("mymarker");
    
    command_encoder107.insertDebugMarker("mymarker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
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
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    command_encoder108.pushDebugGroup("mygroupmarker")
    const command_buffer006 = command_encoder006.finish();
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer206,
        0
    )
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    render_bundle_encoder001.setPipeline(render_pipeline001);
    command_encoder108.insertDebugMarker("mymarker");
    render_bundle_encoder202.popDebugGroup();
    command_encoder000.clearBuffer(buffer000);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.destroy();
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer204,
        0
    )
    
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    const command_buffer003 = command_encoder003.finish();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer006, ]);
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device00.queue.submit([command_buffer006, ]);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    buffer005.destroy()
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder000.setVertexBuffer(0, buffer006);
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
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
    command_encoder108.copyBufferToBuffer(
        buffer105,
        0,
        buffer101,
        0,
        400
    );
    buffer207.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    command_encoder107.insertDebugMarker("mymarker");
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder207.clearBuffer(buffer206);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
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
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer204.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.setIndexBuffer(buffer002, "uint16");
    
    
    buffer009.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder000.drawIndexed(3);
    compute_pass_encoder2070.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const command_buffer109 = command_encoder109.finish();
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    command_encoder000.copyBufferToBuffer(
        buffer007,
        0,
        buffer003,
        0,
        400
    );
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2050.popDebugGroup()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder201.setVertexBuffer(0, buffer205);
    command_encoder000.insertDebugMarker("mymarker");
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2070.popDebugGroup()
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder2070.pushDebugGroup("group_marker")
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder002.setVertexBuffer(0, buffer002);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder000.popDebugGroup()
    command_encoder202.clearBuffer(buffer2011);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer204,
        0
    )
    render_bundle_encoder002.popDebugGroup();
    buffer008.destroy()
    render_bundle_encoder001.popDebugGroup();
    command_encoder000.copyBufferToBuffer(
        buffer009,
        0,
        buffer007,
        0,
        400
    );
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer2011, 0, array2, 0, array2.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder002.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    command_encoder000.resolveQuerySet(
        query005,
        0,
        32,
        buffer009,
        0
    )
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    buffer206.destroy()
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer206,
        0
    )
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder205.resolveQuerySet(
        query209,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2070.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_bundle_encoder002.setIndexBuffer(buffer000, "uint16");
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    device00.destroy();
    
    render_bundle_encoder201.drawIndirect(buffer209, 0);
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.queue.writeBuffer(buffer2011, 0, array5, 0, array5.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-1.0, 1.0, 0.75, 0.75, 1.0, -0.25, -0.5, 0.0, 0.75, -1.0, 0.5, -0.75, -0.75, -0.75, -0.5, 1.0, -1.0, 0.5, 0.25, -0.25, -0.25, -0.5, 0.0, 0.75, -0.75, -0.25, -0.5, -1.0, -1.0, 0.75, -0.75, -0.75, 1.0, 0.0, 0.75, -0.75, -0.25, -0.25, -1.0, -1.0, -0.75, 1.0, -0.5, -0.25, -0.75, 0.0, -0.5, 0.25, -0.5, 0.0, 0.25, 0.25, 0.5, -0.75, 0.25, -0.75, -0.25, 0.5, 1.0, 0.0, -0.75, -0.75, 0.75, 0.25, 0.5, -0.25, 0.0, 0.25, 0.75, 0.0, -0.75, 0.25, 0.75, -0.75, 0.25, -0.75, 1.0, 0.5, -0.75, 0.5, 0.25, 0.75, -0.5, -0.5, -0.75, 0.25, -0.5, -0.25, 0.0, 0.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.0, 0.75, 0.5, -1.0, 0.25, ]);
    device20.queue.writeBuffer(buffer209, 0, array6, 0, array6.length);
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.setVertexBuffer(0, buffer205);
    device20.queue.writeBuffer(buffer209, 0, array0, 0, array0.length);
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
    
    render_bundle_encoder201.popDebugGroup();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder205.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder203.resolveQuerySet(
        query205,
        0,
        32,
        buffer204,
        0
    )
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder202.drawIndirect(buffer2011, 0);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    device20.queue.writeBuffer(buffer2011, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    command_encoder207.resolveQuerySet(
        query209,
        0,
        32,
        buffer209,
        0
    )
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.writeBuffer(buffer2010, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer2011, 0, array6, 0, array6.length);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer2011, 0, array4, 0, array4.length);
    command_encoder207.copyBufferToBuffer(
        buffer203,
        0,
        buffer208,
        0,
        400
    );
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    buffer2014.destroy()
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_bundle_encoder200.setVertexBuffer(0, buffer2014);
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    device20.queue.writeBuffer(buffer2011, 0, array2, 0, array2.length);
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer2012,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2030.popDebugGroup()
    command_encoder108.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2070.popDebugGroup()
    const command_buffer108 = command_encoder108.finish();
    device30.queue.submit([]);
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder2050.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    command_encoder203.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2070.popDebugGroup()
    device10.queue.submit([command_buffer108, command_buffer109, ]);
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
}