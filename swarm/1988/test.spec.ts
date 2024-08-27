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
        powerPreference: "low-power"
    });
    
    
    const array0 = new Float32Array([0.75, -1.0, -0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -1.0, -0.75, 1.0, -1.0, 1.0, 0.25, -0.75, -0.75, -0.75, -0.75, 0.0, -0.5, 1.0, 1.0, 0.0, 0.0, -0.25, -1.0, -1.0, 0.5, 0.0, 0.0, -1.0, 0.75, -0.75, -0.25, -0.25, -0.75, 0.0, 0.25, 0.0, 0.25, -0.25, 1.0, 0.5, 0.75, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, 0.75, 0.0, -1.0, -0.75, 0.25, 0.0, -1.0, 0.75, -0.25, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 0.0, 0.25, 0.25, 0.25, -0.5, 1.0, 0.5, 0.5, 0.25, 0.75, -0.5, 0.25, -0.5, 0.75, -0.75, 1.0, -1.0, 1.0, -0.75, -0.25, 1.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.5, 0.25, -0.25, 0.0, -0.75, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([0.0, -0.5, 1.0, 0.5, -0.5, 0.75, 0.75, 0.25, -0.25, 0.0, 0.75, 0.75, -0.25, 0.75, 0.25, 0.5, -0.75, 1.0, -0.25, 0.75, 0.0, 0.5, -0.75, 1.0, 0.0, 1.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.5, 0.0, -0.5, -0.25, -1.0, 1.0, -0.5, -0.75, 0.0, -0.25, 0.75, 0.25, -0.75, -0.25, 0.75, -0.5, 0.75, 0.5, 0.75, 1.0, 0.75, 1.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.5, 1.0, -1.0, 0.5, 1.0, 0.25, 0.5, 0.5, 0.5, 0.0, 0.25, -1.0, 1.0, -0.5, -0.75, -0.75, -1.0, 1.0, 0.25, -1.0, 1.0, 0.75, -1.0, 0.75, -0.5, 1.0, 0.25, 0.0, -0.5, -0.5, 0.25, 1.0, 1.0, -0.5, 0.25, 0.75, 0.25, -0.25, 0.25, -0.5, 0.0, 1.0, ]);
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    texture000.destroy();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder001.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer001 = command_encoder001.finish();
    texture001.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    query001.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture000.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query002.destroy()
    
    query001.destroy()
    query001.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    texture000.destroy();
    compute_pass_encoder0000.popDebugGroup()
    buffer001.destroy()
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer001.destroy()
    
    query003.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    query000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_buffer004 = command_encoder004.finish();
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    buffer000.destroy()
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0000.popDebugGroup()
    query001.destroy()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    query002.destroy()
    const array2 = new Float32Array([0.5, 0.25, 1.0, 0.25, 1.0, 0.0, 1.0, 0.75, -1.0, 0.5, -0.25, -0.75, 1.0, 0.0, -0.5, -1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 0.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.25, 1.0, -1.0, -0.25, -1.0, 0.0, -0.25, -0.5, 0.75, 0.25, 1.0, 0.5, 0.5, 1.0, -0.5, 0.75, 0.0, -0.5, -0.25, 0.25, 0.5, -0.25, -0.5, -0.75, 1.0, -0.5, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, -1.0, -0.75, -0.75, -0.5, 0.75, -1.0, -0.5, 0.0, -0.75, 0.75, -0.25, 0.0, -0.25, 0.75, 0.75, -0.5, 0.0, 0.25, -0.75, -0.75, 0.0, -0.5, -0.75, 1.0, -1.0, -1.0, 0.75, -0.5, -1.0, 0.5, 0.75, -0.75, -0.75, 0.0, 0.75, 0.25, 0.75, 0.75, ]);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query003.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.insertDebugMarker("mymarker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer005 = command_encoder005.finish();
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture100.destroy();
    query002.destroy()
    query001.destroy()
    query004.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder100.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    buffer004.destroy()
    
    texture100.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder002.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    compute_pass_encoder0000.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder0020.popDebugGroup()
    query002.destroy()
    
    
    
    
    
    query002.destroy()
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    query001.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    buffer200.destroy()
    const array3 = new Float32Array([-0.25, 0.25, 1.0, -0.5, -1.0, 1.0, -0.25, -0.5, -0.5, -0.25, 0.5, -0.5, -0.75, -0.75, 0.75, 0.75, -0.75, -0.75, 0.0, 0.0, -0.25, -0.5, 0.5, -1.0, -0.5, -0.75, -1.0, -0.5, 1.0, 0.25, 1.0, 0.0, 0.25, 1.0, -0.5, -0.25, 0.0, -0.5, -0.75, 0.25, 0.75, -0.25, -0.5, -0.75, -1.0, -0.5, 0.25, 0.25, 0.5, 0.75, 0.0, -0.25, 1.0, 1.0, 0.5, 0.5, 0.75, -0.5, 0.25, 0.25, 0.0, 1.0, 0.0, -0.5, -1.0, 0.75, -0.75, 0.25, 0.0, -0.75, -1.0, -1.0, -1.0, -0.5, -0.75, -0.75, -0.25, 0.5, 0.25, -0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -0.25, -0.75, -1.0, -0.5, 0.25, 1.0, -0.75, -0.5, -0.25, 0.25, -0.25, 0.5, -0.5, 0.0, -0.25, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    
    
    query001.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query000.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    buffer005.destroy()
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query001.destroy()
    const array4 = new Float32Array([-0.25, 0.0, 0.0, -0.75, 0.25, -1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -0.25, 0.25, 0.75, -0.25, -1.0, -0.75, 0.25, 0.5, -0.5, -0.5, 0.5, -0.25, -1.0, -0.25, 0.25, -1.0, -1.0, 0.0, 0.5, -0.5, -0.5, -0.75, 1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, -0.75, -1.0, 1.0, -0.75, -0.25, 0.0, 0.75, -0.25, -1.0, 0.25, 1.0, -0.25, 1.0, -0.75, 0.5, -0.5, -0.5, -0.5, 0.75, 0.0, 0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, -0.5, 0.75, -0.25, -0.5, 0.5, -0.5, 0.5, -1.0, -0.5, 0.25, -0.75, -1.0, 1.0, 1.0, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, 0.25, 1.0, -0.25, 0.0, -1.0, -0.5, -0.75, 0.75, 1.0, -0.25, 0.75, ]);
    command_encoder002.resolveQuerySet(
        query005,
        0,
        32,
        buffer002,
        0
    )
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array5 = new Float32Array([0.25, 0.75, 0.0, -0.75, -0.75, 0.0, 0.0, -0.5, 0.0, 0.0, -0.75, 0.25, 0.0, 1.0, -0.75, 0.75, 0.25, -0.5, -0.5, 0.5, -0.25, -1.0, -1.0, 1.0, -0.5, 0.5, -0.75, 0.75, 0.0, 0.5, 0.5, 0.25, 0.25, 0.5, 1.0, 0.25, 0.5, 0.0, -0.5, 0.5, 0.5, 1.0, -1.0, 1.0, 1.0, -1.0, -0.75, -0.75, 0.0, -0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -0.75, 0.0, -0.25, 1.0, 0.0, -1.0, -0.5, -0.75, 0.75, -0.25, 0.0, 0.25, 0.0, 0.25, 0.25, 1.0, 0.75, 0.0, -0.25, 0.0, -0.5, 0.25, -0.75, -1.0, 0.0, -0.75, 0.25, 1.0, -0.75, 0.5, 0.5, -0.5, 1.0, 0.75, 0.75, -0.5, -0.25, 0.75, -0.5, -1.0, 0.25, 1.0, -1.0, 0.0, 0.25, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const command_buffer101 = command_encoder101.finish();
    device10.pushErrorScope("validation");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    buffer201.destroy()
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    texture100.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    texture200.destroy();
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder002.copyBufferToBuffer(
        buffer005,
        0,
        buffer003,
        0,
        400
    );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    query101.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer202.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array6 = new Float32Array([0.25, -1.0, -1.0, 0.5, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, -0.25, -0.5, -0.75, -1.0, -1.0, 0.0, 1.0, 0.25, -0.75, 1.0, -0.5, 0.0, 0.25, 1.0, 0.5, 1.0, -1.0, -0.75, -0.5, 1.0, 0.5, -0.25, -0.25, -0.5, -0.25, -1.0, 0.75, -1.0, -1.0, 0.5, -0.25, -0.5, 0.0, -1.0, 0.5, -0.5, 1.0, 0.0, 1.0, -0.5, 1.0, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, 0.75, 0.75, -0.25, 0.5, -0.5, -0.5, 0.25, -0.5, -0.25, 0.75, 0.5, 0.75, 0.0, -0.75, 0.0, 0.5, 0.0, 0.25, 1.0, 0.5, -0.25, -0.5, -0.5, 0.5, -0.75, -1.0, 0.25, -0.5, -0.75, -0.5, -0.25, -0.75, 0.75, -0.75, -0.75, -0.5, 0.75, 1.0, 0.75, -0.5, -0.25, -0.5, 0.25, ]);
    query100.destroy()
    texture202.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    buffer003.destroy()
    
    texture101.destroy();
    texture202.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    const command_buffer400 = command_encoder400.finish();
    buffer102.destroy()
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    buffer005.destroy()
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    device40.pushErrorScope("validation");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder203.setPipeline(render_pipeline200);
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    buffer000.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer002,
        0
    )
    
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    query000.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    texture100.destroy();
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    command_encoder402.insertDebugMarker("mymarker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.clearBuffer(buffer203);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer006 = command_encoder006.finish();
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture201.destroy();
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query000.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    command_encoder007.resolveQuerySet(
        query006,
        0,
        32,
        buffer002,
        0
    )
    
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    command_encoder202.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder202.clearBuffer(buffer202);
    device30.destroy();
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer401 = command_encoder401.finish();
    
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    query101.destroy()
    
    compute_pass_encoder0070.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const array7 = new Float32Array([-0.5, -0.5, -0.5, 0.25, -0.75, 0.25, -0.25, 1.0, 0.75, 0.75, 0.25, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 1.0, 0.25, 1.0, -0.5, -0.25, -0.25, 0.5, 0.5, -0.5, -0.25, 0.75, -0.5, -0.75, -0.5, 0.75, -1.0, -1.0, -0.25, 0.75, 0.5, -1.0, -0.25, -0.75, -1.0, -0.25, 0.25, -0.5, -0.75, -0.5, 0.25, 0.75, -1.0, 0.0, -0.25, -0.5, -0.5, -0.75, 1.0, -0.75, -0.75, -0.75, 0.0, 0.25, 0.75, 0.25, -0.5, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.75, -1.0, 1.0, -1.0, -1.0, 0.25, -0.25, -0.25, -0.25, 0.25, -0.75, 1.0, -0.5, 1.0, -1.0, 0.5, -0.25, -1.0, 0.5, 1.0, 0.5, -1.0, -0.75, 0.25, 0.25, -1.0, -0.25, 0.75, -0.75, 0.0, -0.75, ]);
    query100.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    query101.destroy()
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder203.setBindGroup(0, bind_group200);
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    query101.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    compute_pass_encoder2000.popDebugGroup()
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer203,
        0,
        400
    );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0001.insertDebugMarker("marker")
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    command_encoder200.copyBufferToBuffer(
        buffer204,
        0,
        buffer202,
        0,
        400
    );
    device20.pushErrorScope("internal");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query005.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query002.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder202.setPipeline(render_pipeline203);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    texture000.destroy();
    compute_pass_encoder4020.popDebugGroup()
    
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer007.destroy()
    query401.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer003.destroy()
    
    
    command_encoder403.insertDebugMarker("mymarker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_bundle_encoder001.popDebugGroup();
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder0070.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer203.destroy()
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    render_bundle_encoder202.insertDebugMarker("marker");
    query005.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder203.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    query400.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    texture102.destroy();
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    
    
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder203.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer600 = command_encoder600.finish();
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder0070.popDebugGroup()
    const command_buffer404 = command_encoder404.finish();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    const command_buffer200 = command_encoder200.finish();
}