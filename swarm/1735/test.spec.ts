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
    
    const array0 = new Float32Array([0.25, 0.0, 1.0, -0.5, 0.5, 0.5, 0.5, -0.5, 1.0, 0.75, -0.25, 1.0, 0.25, 0.25, 0.75, -0.75, -0.25, 0.25, 1.0, -0.25, 1.0, 1.0, 0.75, -0.25, -1.0, 0.75, 0.75, 0.75, -0.5, -0.5, -0.75, 0.75, 0.75, 0.75, 0.0, -0.5, 0.0, -0.75, -1.0, 0.5, 0.5, 0.0, -1.0, -1.0, -0.75, -0.25, -1.0, -1.0, -1.0, 0.25, 1.0, -1.0, -1.0, -0.25, -0.75, -1.0, -1.0, 0.0, 1.0, 0.25, -0.25, -0.25, -0.25, 0.5, 0.25, 0.75, 0.5, 0.0, -0.75, -0.5, 0.75, -1.0, 0.75, 0.25, -1.0, -1.0, 1.0, 0.0, -0.25, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, -1.0, -0.25, 0.75, -1.0, 0.5, -0.75, 0.75, 0.0, 0.75, -1.0, -0.5, 0.75, -0.75, 0.75, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const array1 = new Float32Array([-1.0, 0.75, -0.5, -1.0, -0.75, -1.0, 0.0, 1.0, 0.25, 1.0, 0.75, -0.25, 0.25, 0.5, 0.25, 0.0, 0.25, 1.0, 0.75, 0.0, 0.75, 0.0, 0.5, 0.5, 0.0, 0.0, 0.0, -0.75, -1.0, 0.25, 0.0, -1.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.0, 0.0, 0.5, -0.5, -0.5, -0.25, 0.75, 0.5, 0.75, 0.0, 0.75, 0.5, 0.0, 0.5, -0.25, -1.0, 1.0, 0.0, 1.0, -0.75, 0.75, 0.5, -0.5, -0.5, 0.25, -0.75, 0.25, -0.5, -0.5, 0.75, -1.0, -0.5, 0.75, 0.5, -0.25, 0.5, 0.75, 0.5, -1.0, -1.0, 0.0, -0.5, 0.25, -0.75, -0.25, 1.0, -1.0, 0.75, -0.75, 0.5, -0.75, 0.75, -0.5, -0.5, -0.75, -0.5, 0.5, -0.75, 0.25, 0.25, 0.75, -0.25, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("out-of-memory");
    const array2 = new Float32Array([0.5, -0.25, 1.0, 0.0, 1.0, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.75, -1.0, -0.25, -1.0, -1.0, -0.25, 0.0, -1.0, 0.25, -0.5, -0.25, 0.0, 1.0, 0.0, 0.25, 0.5, 0.5, -1.0, 0.25, 1.0, -1.0, -0.75, -0.25, 0.25, -1.0, 0.75, 1.0, 0.5, 0.5, 0.75, 1.0, -0.75, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, -0.25, -1.0, 0.25, 0.0, -1.0, 0.25, 0.25, -0.75, 0.0, -0.75, -0.25, 0.0, 0.5, -0.5, 0.5, -0.75, 0.25, 0.0, -0.5, -1.0, 0.75, -0.5, 0.25, 0.75, -0.75, 0.0, -0.25, 0.5, -0.25, 0.25, 0.0, -0.25, -0.25, 0.5, -0.75, 0.75, -0.75, -0.75, 0.75, 0.0, 0.5, 0.75, -1.0, 0.0, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, -0.5, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query001.destroy()
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.0, 0.25, 0.25, 0.0, -0.25, 0.25, 0.5, 0.0, -0.25, 0.0, -0.25, 0.75, -0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.5, 0.0, -0.5, -0.5, 0.25, -0.25, 0.0, 0.25, -0.75, 0.25, -0.5, 0.75, -0.5, -0.75, -0.5, -0.5, -0.5, -1.0, -0.75, -1.0, -1.0, 0.25, 0.75, 0.0, 0.0, -0.75, 1.0, 0.75, 0.5, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.5, -0.5, 1.0, 0.0, -1.0, -0.5, 0.0, 0.5, 0.5, 0.25, -0.5, -0.5, 0.5, -0.5, 0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.0, -0.5, 1.0, 0.5, 0.25, -0.5, 0.0, -0.5, -0.5, 1.0, -0.25, 1.0, -0.25, -0.25, 0.0, 1.0, -1.0, -0.25, 0.75, 0.0, 0.0, 0.0, -0.5, -1.0, 0.5, -0.25, 0.75, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    query200.destroy()
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    buffer201.destroy()
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query200.destroy()
    const array4 = new Float32Array([-0.25, 1.0, 0.5, 1.0, -1.0, 0.25, -0.5, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, -0.25, 0.0, 0.5, -0.5, 0.5, 0.5, -0.75, 1.0, 1.0, 0.5, -0.25, 0.25, 0.5, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 1.0, -1.0, -0.75, 0.25, -0.5, -0.5, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, 1.0, -0.25, 1.0, 0.0, -0.25, 0.5, 0.75, 0.75, 0.75, 1.0, 0.0, -0.75, -0.25, 0.75, 1.0, 0.5, 0.75, -0.75, 0.5, -0.5, -0.75, -1.0, -0.5, -1.0, -0.25, 0.75, 0.5, 1.0, -1.0, -0.5, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -0.5, -0.5, -0.5, 0.25, 0.5, 0.5, 0.75, 0.75, 0.0, -1.0, 0.25, -0.25, -0.25, -0.5, 0.25, -1.0, -0.75, -1.0, -1.0, -0.25, ]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query000.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query000.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer000.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer200.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
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
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer100.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([-0.75, 0.0, -0.75, 0.75, 0.75, 0.25, 0.75, -0.75, 1.0, -1.0, 0.0, 0.5, -0.75, 0.25, 0.75, -0.25, 0.25, -1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 0.0, -0.5, 0.0, -0.75, 0.75, -0.5, 0.0, -0.5, 0.0, -1.0, 1.0, 0.25, 0.0, 1.0, -0.25, -0.75, 0.5, 0.25, 0.25, -1.0, 0.5, -0.25, 0.75, 1.0, -0.75, 0.0, 0.25, 0.0, -0.75, 0.75, -0.75, -1.0, 0.75, -0.75, 0.75, 1.0, 0.25, -0.5, 1.0, 0.0, -0.5, 0.5, -0.75, -0.75, -0.5, 0.5, 0.0, -0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 1.0, -1.0, 0.75, -0.75, 0.25, 0.5, 0.0, 0.5, 0.25, -0.75, 1.0, -0.75, 0.0, -1.0, -1.0, 1.0, -0.5, -0.5, -1.0, -0.25, -1.0, 0.5, 1.0, 0.25, ]);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.destroy();
    buffer202.destroy()
    
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query000.destroy()
    
    buffer202.destroy()
    
    device20.pushErrorScope("validation");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    buffer203.destroy()
    device30.destroy();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    query202.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer200.destroy()
    
    query200.destroy()
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.submit([]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query201.destroy()
    
    
    render_bundle_encoder201.popDebugGroup();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder200.popDebugGroup();
    
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query205.destroy()
    
    query201.destroy()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query206.destroy()
    query206.destroy()
    texture200.destroy();
    query203.destroy()
    
    query206.destroy()
    
    
    const array6 = new Float32Array([-1.0, 0.75, -0.5, -0.5, 0.75, 0.25, 0.25, 0.0, 1.0, -0.25, -1.0, 0.75, 0.25, -1.0, -1.0, 0.5, 0.0, 0.75, -0.5, 0.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.25, -1.0, -0.5, 0.25, -0.25, 0.25, 0.25, -0.5, 0.5, 0.75, 0.75, -0.75, -0.5, 0.75, 1.0, 0.25, -0.5, 0.5, 0.0, 0.5, 1.0, -0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 1.0, -1.0, -0.25, 0.5, 0.0, -0.25, 0.5, -0.75, 0.25, 0.25, 1.0, -0.25, 1.0, 1.0, 0.5, -0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, -0.25, -0.25, 0.0, 0.5, -0.5, 0.25, -0.5, 0.25, -0.5, 0.75, 0.5, -0.75, 0.25, 0.75, 0.25, 0.25, 0.25, 1.0, 0.5, -1.0, 0.0, 0.25, -0.75, 1.0, -0.25, 0.0, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query000.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    
    const array7 = new Float32Array([-0.5, -0.75, 0.25, -0.25, -0.75, -0.25, -0.25, -1.0, -1.0, -0.25, 0.5, 1.0, 0.75, 0.75, -0.5, -0.5, 0.75, 0.0, -0.25, 0.25, 0.0, -0.75, 0.25, 0.75, 0.0, -1.0, -1.0, -0.25, -1.0, 0.75, -0.25, 0.75, 0.75, 0.5, 0.25, 0.5, -0.25, 1.0, 0.75, 0.75, -0.25, -0.25, 0.25, 1.0, 1.0, -1.0, 0.0, 1.0, 0.75, 0.25, 0.5, -0.25, -0.5, 0.25, 0.5, 1.0, 0.25, 0.25, 0.25, 0.0, -0.75, -1.0, -0.5, 0.75, 1.0, 0.25, 0.25, 0.75, 0.75, 0.25, 1.0, -0.5, -0.75, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 1.0, -0.75, 0.5, 0.0, 0.25, 0.0, 0.5, 0.75, 0.5, 0.75, -1.0, 0.75, 0.75, 1.0, -0.25, -1.0, -0.75, 0.0, -0.5, -1.0, 0.75, ]);
    device40.pushErrorScope("out-of-memory");
    
    query206.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    buffer201.destroy()
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query201.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    
    query400.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query200.destroy()
    render_bundle_encoder201.popDebugGroup();
    buffer400.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.popDebugGroup();
    
    
    const array8 = new Float32Array([-1.0, -0.5, 0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 1.0, 1.0, -1.0, 0.5, 0.0, 1.0, -0.5, -0.75, -1.0, -0.25, 0.5, -0.75, 0.5, 0.5, -1.0, -1.0, -0.25, 0.5, 0.25, 0.75, 0.5, 0.0, 1.0, -0.75, 0.25, -0.5, 0.25, 0.0, -0.5, -0.75, -0.25, -1.0, 0.25, 0.25, -0.75, -0.5, -0.75, -0.75, 0.0, 1.0, -0.75, 0.75, 0.5, 0.75, 0.25, 1.0, -1.0, -0.5, -0.25, 0.75, 0.5, -1.0, 1.0, 0.75, 0.75, 0.25, 0.25, 0.5, -0.75, -1.0, 0.0, -0.75, 0.25, 0.5, 1.0, -0.25, -0.5, -0.5, -1.0, 0.75, -0.25, 0.75, 0.25, 0.75, -1.0, 0.0, -1.0, 0.75, 0.0, -0.75, 0.25, 0.5, -0.25, -1.0, 0.25, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, 1.0, ]);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query204.destroy()
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.0, 0.5, 0.75, 0.0, 0.0, 1.0, 0.25, 0.25, 0.25, 0.5, -1.0, -1.0, 0.25, -0.5, -1.0, -0.25, 1.0, -1.0, 0.0, 0.5, -0.25, -0.5, 0.25, 0.25, -1.0, 0.5, -0.5, -1.0, 0.75, 0.0, -1.0, -0.5, 0.25, 0.5, 1.0, 0.75, -0.75, 0.25, 0.75, -0.25, -0.75, -0.5, -1.0, -0.25, -0.75, -0.25, 0.25, -0.5, -0.75, 0.5, -1.0, 1.0, -1.0, 0.75, 0.5, -1.0, 1.0, -0.5, -0.25, -0.75, 0.5, -0.25, -0.5, -0.75, -0.75, -0.25, -1.0, 1.0, -0.5, -1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 0.0, -0.5, 0.0, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 0.25, -1.0, -0.25, 0.25, 0.75, -1.0, -1.0, 0.5, 0.5, -0.75, 0.5, 0.25, 0.75, -0.5, ]);
    
    query400.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    query207.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query207.destroy()
    
    
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    query402.destroy()
    
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    query208.destroy()
    
    
    query200.destroy()
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array10 = new Float32Array([0.25, 0.75, 0.25, -0.25, 1.0, 1.0, -1.0, -0.75, 1.0, -0.5, -0.25, 0.25, -0.5, -0.75, -0.75, -0.25, -0.5, 0.25, -0.25, 0.25, 0.75, 0.5, -0.75, 1.0, -0.5, 0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.75, 0.25, 0.25, 1.0, -0.25, 0.25, -0.75, -0.75, -0.5, 0.75, 1.0, 0.0, 1.0, 0.75, 0.5, 0.5, -0.25, 0.25, -0.5, -1.0, 0.5, 0.75, -1.0, -1.0, -0.75, 0.75, 0.75, 1.0, 0.75, -0.75, 0.5, 0.0, 0.75, -1.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.25, 0.75, -0.75, -0.5, 0.25, -1.0, -0.25, 0.0, -0.75, 0.75, 0.0, 0.0, -1.0, 0.75, -0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 0.75, 0.5, 0.25, -0.75, 0.25, 1.0, -1.0, 0.25, 0.75, 0.25, ]);
    buffer204.destroy()
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array11 = new Float32Array([0.25, 0.5, 0.75, -1.0, 0.75, -1.0, -0.25, 1.0, 0.25, 1.0, 0.25, -1.0, -0.25, 0.0, -0.25, 0.5, 1.0, -0.5, -0.5, -0.5, -0.25, -1.0, -1.0, 0.25, -0.25, 0.0, 0.5, 0.0, 1.0, 0.25, 1.0, -0.5, 0.25, 0.25, 0.75, -0.75, -0.5, -1.0, -0.75, 0.25, -0.25, -1.0, -0.5, -0.75, 1.0, 0.5, 0.75, -0.25, -1.0, 0.5, -1.0, -0.75, 0.25, -0.75, 0.25, 0.0, 0.0, 1.0, 0.5, 0.75, 1.0, -1.0, 0.75, 0.5, -0.75, 0.25, 0.0, 0.0, -0.25, 1.0, -0.5, 1.0, -1.0, -0.5, 0.25, -0.75, -0.5, 0.25, -0.25, 0.75, 0.0, 0.0, 1.0, 0.5, -0.75, -0.5, -0.75, 0.0, -0.25, -0.5, 0.0, -1.0, -0.75, 0.0, 1.0, -0.5, 0.75, -0.75, 1.0, -0.5, ]);
    
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture202.destroy();
    
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query2010.destroy()
    query207.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query403.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    query201.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    query201.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query200.destroy()
    
    query205.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query402.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture203.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    query202.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query2010.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    buffer401.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    texture400.destroy();
    device20.queue.writeTexture({ texture: texture203 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_bundle_encoder202.popDebugGroup();
    query203.destroy()
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    query206.destroy()
    
    
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture402 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    query202.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    query204.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    query2010.destroy()
    
    buffer600.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture402.destroy();
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query207.destroy()
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module2010,
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
            module: shader_module2010,
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
    query400.destroy()
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query209.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query207.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    texture401.destroy();
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    buffer700.destroy()
    
    
    query200.destroy()
    
    buffer205.destroy()
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module2011,
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
            module: shader_module2011,
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    query205.destroy()
    const array12 = new Float32Array([0.25, -1.0, -0.5, 0.75, 0.5, -0.25, -1.0, 0.5, -0.5, -0.25, 1.0, -0.75, -0.5, 0.0, 0.75, 0.75, -0.75, 1.0, 1.0, 0.25, 1.0, -0.75, 0.25, -1.0, -0.75, 0.5, -1.0, 0.5, -1.0, -0.5, 0.5, -1.0, 1.0, -0.75, -0.75, 0.75, 0.25, -0.25, -1.0, 0.0, -0.5, -1.0, -0.5, -0.5, -0.25, 1.0, -1.0, 1.0, 0.25, 1.0, 0.75, -0.75, 0.75, -0.5, 0.0, 0.5, 0.5, -0.5, -0.5, 0.75, 0.75, 0.75, 0.0, -0.5, -0.25, -0.5, -0.25, 0.75, 0.75, -1.0, -0.75, 0.25, 0.5, -0.25, -1.0, 0.75, -0.5, 0.25, 0.25, 0.0, -0.75, 1.0, 0.0, 0.0, -0.5, 0.25, 0.75, -0.75, 1.0, -0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 0.25, -0.5, -0.25, 0.75, 0.5, ]);
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    
    texture600.destroy();
    query400.destroy()
    buffer200.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module2011,
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
            module: shader_module2011,
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
    
    query200.destroy()
    device20.queue.submit([]);
    device70.queue.submit([]);
}