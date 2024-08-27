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
    const array0 = new Float32Array([0.0, 0.25, -1.0, 1.0, 0.25, 0.75, -0.5, -1.0, -0.25, -0.25, 0.25, 0.0, -1.0, 1.0, 0.25, -0.5, 0.0, -0.75, 0.0, -0.5, 1.0, -0.25, 0.75, -1.0, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, -0.25, 0.25, 0.25, 0.75, 0.75, 0.0, -0.25, -0.75, -0.5, -0.75, 1.0, -0.5, 0.5, -0.25, 0.0, 0.75, 0.0, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, 1.0, 0.75, 1.0, 1.0, 1.0, 1.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.0, 0.75, 0.0, 0.75, -0.75, 0.0, 0.25, -0.75, 1.0, 0.25, -1.0, 1.0, -0.5, -1.0, 1.0, -1.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.75, -0.75, -1.0, -0.25, -0.25, -0.75, 0.0, 0.5, -1.0, 0.0, -0.25, 0.75, -1.0, 0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    
    
    
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
    
    device00.pushErrorScope("out-of-memory");
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.destroy();
    buffer000.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.destroy();
    
    const array1 = new Float32Array([1.0, 0.25, 1.0, 0.25, -0.75, -0.5, -0.25, 0.0, 0.75, -0.5, 0.5, -0.5, -0.75, 0.25, 0.5, -1.0, 0.75, 0.25, -1.0, 0.25, 0.0, 0.75, -0.5, -0.25, 0.5, -0.25, -0.75, 1.0, 0.0, 0.75, 0.0, 0.5, -0.25, 0.0, 0.5, 0.25, 0.0, -0.25, 1.0, -1.0, -0.25, 0.0, -0.5, 0.0, -0.25, 0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 0.0, -1.0, 0.5, -0.5, 0.25, 0.5, -0.5, -0.25, -1.0, 0.75, 0.5, -1.0, 0.25, -0.5, 0.0, -0.5, 0.75, 0.0, 0.75, 0.0, 0.0, -0.25, 0.0, 0.25, 0.75, 0.0, 0.0, 0.75, 0.5, 0.25, -0.5, 0.25, 0.5, 0.5, -0.5, -0.5, 0.0, 0.5, 0.0, -0.75, -0.5, -0.75, 0.75, 0.25, -0.5, -0.5, 0.75, 1.0, -1.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array2 = new Float32Array([1.0, 0.5, 1.0, -1.0, -1.0, -0.5, 0.5, 1.0, 0.25, -0.75, 0.75, 0.75, -0.25, 0.75, -0.75, 0.25, -1.0, -0.25, 0.25, -1.0, 0.75, 0.0, -0.75, -0.5, 0.5, 0.25, 0.5, -0.5, 0.75, -0.75, -0.25, 0.75, 0.75, 0.75, 0.5, 0.25, 0.0, 0.75, -1.0, -0.75, 0.5, -1.0, -0.75, 0.5, -0.75, 0.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0.25, 0.5, 0.75, 0.25, -0.75, 0.75, 0.25, 0.25, -1.0, 0.5, -1.0, 0.75, -0.25, 0.0, 0.5, -0.25, 0.75, -1.0, -0.25, 0.75, -0.25, 0.75, 1.0, -0.5, 0.75, -1.0, 0.25, 1.0, -1.0, 0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, 1.0, -0.25, -0.5, 0.25, -0.75, 1.0, -1.0, -0.5, -0.25, -0.5, 0.5, ]);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    device40.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([0.75, 0.25, 0.75, 0.75, -0.5, 0.75, 0.0, 0.75, -0.75, -0.25, 0.5, -0.5, 0.25, -0.25, 0.75, 0.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.25, -1.0, 0.25, -1.0, 0.75, 0.75, 0.75, 0.25, -0.75, 0.25, 0.75, 0.0, 0.75, 1.0, 0.25, -0.25, 0.0, 0.0, -0.25, 0.75, 0.5, -0.25, -1.0, -1.0, 0.25, -0.25, 1.0, 0.75, -0.5, -0.25, 0.5, -0.5, 0.75, 1.0, 0.75, 0.75, 0.0, -0.5, 0.5, 1.0, 0.25, 0.75, 0.75, -0.25, -1.0, -1.0, 0.5, 0.75, 0.25, 0.75, -0.5, 1.0, -0.75, 0.25, -1.0, -0.75, -1.0, -0.75, 0.5, -0.75, -0.5, 1.0, 0.0, -0.5, -0.75, 0.75, 0.75, -1.0, 0.5, -0.75, 0.0, 0.0, -1.0, 0.75, 0.5, 0.25, -1.0, 0.75, -0.5, ]);
    
    
    
    
    
    
    const array4 = new Float32Array([0.75, -1.0, -1.0, -1.0, -0.25, -0.75, -0.25, -1.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.0, 0.25, -0.75, 0.25, 0.0, 0.5, -1.0, 0.0, 0.5, -1.0, 0.5, -0.5, -0.5, -0.75, -0.5, -1.0, -1.0, 0.0, -0.75, 1.0, -0.5, -0.25, -0.25, 0.5, -1.0, 0.0, -0.75, 0.25, -0.25, 0.5, 0.75, 0.75, 1.0, -0.5, 0.75, 0.5, 0.0, -0.5, 0.5, -0.5, 0.0, -1.0, -0.75, 0.0, 0.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.25, 0.0, -0.25, -0.25, -1.0, 0.25, 1.0, -1.0, 0.0, -0.5, -0.25, 0.0, -0.75, 1.0, -0.75, 0.75, -0.5, -0.25, -1.0, 1.0, 0.75, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, -0.5, 0.75, 0.25, -0.75, -0.25, 0.25, 0.25, 0.5, -0.75, -0.25, ]);
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.pushErrorScope("validation");
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device60.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const array5 = new Float32Array([0.0, 0.75, 0.0, 0.75, -1.0, -0.75, -0.5, -0.5, 0.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 0.5, -0.25, -0.75, -0.25, -0.25, 1.0, -1.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.5, -0.75, -1.0, 0.75, 0.75, 0.0, 0.25, 0.25, 1.0, 1.0, -0.25, -0.5, -1.0, 0.0, -1.0, -1.0, -0.5, 0.25, 1.0, 0.5, -1.0, 0.5, -1.0, -0.25, 0.75, 0.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -0.25, 0.75, -0.75, -0.5, 0.75, -0.75, -1.0, 1.0, -0.5, 0.5, -1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0.25, 0.0, 0.25, 0.25, -0.5, -0.75, 1.0, 0.5, -0.25, 0.25, -0.75, 0.25, 0.5, 0.25, -0.75, -1.0, -0.75, 0.0, ]);
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    
    
    
    
    device50.pushErrorScope("validation");
    
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    buffer500.destroy()
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query500.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    device50.pushErrorScope("validation");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    query500.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    query500.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    query502.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    device80.destroy();
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    buffer501.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device50.destroy();
    
    device70.pushErrorScope("out-of-memory");
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    device110.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const array6 = new Float32Array([1.0, -1.0, 1.0, 0.25, 0.0, -0.75, 0.75, 0.5, 1.0, 0.5, 0.25, -0.75, 0.75, 1.0, 0.5, 0.25, -0.25, -0.5, -0.75, -1.0, 0.75, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, -0.5, 0.75, -0.5, -0.25, -0.75, -0.75, -0.75, -0.25, 0.5, 1.0, -1.0, -0.5, -0.25, 0.25, 0.25, -0.75, 0.0, -1.0, -1.0, 1.0, 0.25, 1.0, 1.0, -0.5, -0.5, -1.0, -1.0, -0.25, 0.75, 0.25, -0.25, -0.75, -0.5, -1.0, -0.75, -0.75, 0.75, -0.25, 1.0, -0.25, -1.0, 0.0, -1.0, -0.75, -1.0, 0.5, 0.0, 0.0, 0.5, -0.5, 1.0, 0.0, 0.75, -1.0, 1.0, 0.0, -0.75, 0.25, -0.5, -1.0, 0.5, -1.0, 0.25, 0.25, -0.5, 0.25, 0.5, 0.5, -0.75, 0.5, 0.0, -1.0, 0.0, ]);
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    const array7 = new Float32Array([0.25, -1.0, 0.75, -0.75, 0.5, 0.0, -0.25, 1.0, -0.75, 0.0, 0.25, -0.5, -0.25, 0.0, -1.0, -0.25, -0.5, 0.5, 0.75, -0.25, -0.75, -1.0, -0.75, -0.5, -0.5, 1.0, 0.75, 0.25, -1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -0.5, 1.0, -0.75, -1.0, -0.5, 1.0, 0.5, -0.75, -0.75, -0.75, -1.0, -1.0, 0.75, 0.0, -0.25, -1.0, -0.25, 0.0, -0.5, 1.0, 0.25, 0.0, -0.25, -0.25, 0.25, -0.75, -0.25, 1.0, 0.5, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, -0.5, 0.5, -0.5, 0.75, -1.0, -1.0, 0.0, -0.25, 0.0, -0.25, -1.0, -0.5, -1.0, -0.25, 0.5, -1.0, 0.75, -0.5, 1.0, 0.0, 1.0, -1.0, 0.5, -0.75, 0.0, 0.75, -1.0, -0.75, -0.5, -1.0, 0.5, ]);
    
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    
    device70.destroy();
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const sampler1003 = device100.createSampler( { label: "sampler1003" } );
    
    const sampler1004 = device100.createSampler( { label: "sampler1004" } );
    buffer1001.destroy()
    
    
    
    
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const sampler1005 = device100.createSampler( { label: "sampler1005" } );
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    device100.pushErrorScope("validation");
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    buffer900.destroy()
    
    query1300.destroy()
    buffer1002.destroy()
    
    device130.pushErrorScope("internal");
    
    
    const sampler1006 = device100.createSampler( { label: "sampler1006" } );
    query1300.destroy()
    
    
    query1300.destroy()
    
    
    device100.destroy();
    query1300.destroy()
    
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    device90.pushErrorScope("out-of-memory");
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    buffer901.destroy()
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    const array8 = new Float32Array([-0.75, 0.25, 0.5, -0.5, 0.0, -0.75, 0.0, 0.75, -1.0, -1.0, -1.0, 1.0, -0.75, -0.75, 0.25, -0.25, 0.25, -1.0, 1.0, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, 0.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.0, -0.25, 0.5, -0.25, 0.0, -0.75, -0.75, 0.25, -0.25, 0.0, 0.25, 0.75, -0.25, 0.5, -0.75, 0.5, 0.0, -1.0, 0.0, 1.0, 0.5, -0.5, -0.25, -0.5, 1.0, 0.25, 0.75, 0.75, 0.0, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, 0.25, 1.0, 1.0, 0.5, -0.5, 0.75, 0.5, -0.25, -1.0, 0.0, -1.0, -0.25, 1.0, 1.0, -1.0, 0.5, -0.5, 1.0, -0.75, -1.0, -0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 0.25, -0.5, 0.0, 0.5, 1.0, 0.25, 0.0, 0.75, ]);
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device120.pushErrorScope("internal");
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    render_bundle_encoder901.setPipeline(render_pipeline902);
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    
    device180.destroy();
    
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const array9 = new Float32Array([0.0, 0.5, -0.5, 0.5, -0.25, 1.0, 0.25, -0.5, 0.0, -0.5, 0.75, 0.0, 0.75, 0.0, -0.75, 0.0, 0.25, -0.5, -0.75, -0.25, 0.5, 0.25, 1.0, 0.5, -0.75, -0.5, 0.75, -0.5, 0.25, 0.5, 0.5, -0.5, 0.5, 1.0, 0.5, 0.0, -0.5, -1.0, -0.5, -0.25, 0.0, 1.0, 0.0, 1.0, -0.75, -0.25, 1.0, -0.75, 1.0, 1.0, 0.25, 1.0, 0.75, -1.0, 1.0, -0.25, 1.0, -0.5, -0.5, -1.0, 0.25, -0.25, 1.0, -0.5, 0.0, 0.25, 1.0, 1.0, -0.5, 0.5, -0.5, 0.25, 0.5, -0.5, -0.25, 0.25, 0.25, -0.5, -0.5, -0.5, 0.5, 1.0, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, 0.0, 0.25, -0.75, -0.25, -0.5, -0.25, 1.0, 0.5, -1.0, 0.5, 0.5, 0.0, ]);
    const render_bundle_encoder1701 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1701",
        colorFormats: ["bgra8unorm"]
    });
    const query1502 = device150.createQuerySet({
        label: "query1502",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    
    var shader_module1702_code = "";
    try {
        shader_module1702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1702 = await device170.createShaderModule({ label: "shader_module1702", code: shader_module1702_code })
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline902.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer902,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer903,
                },
            },
        ],
    });

    render_bundle_encoder901.setBindGroup(0, bind_group900);
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    query902.destroy()
    const sampler1204 = device120.createSampler( { label: "sampler1204" } );
    buffer902.destroy()
    const query1503 = device150.createQuerySet({
        label: "query1503",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device170.pushErrorScope("out-of-memory");
    const render_pipeline1700 = device170.createRenderPipeline({
        label: "render_pipeline1700",
        vertex: {
            module: shader_module1701,
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
            module: shader_module1701,
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
    
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device150.pushErrorScope("out-of-memory");
    query1700.destroy()
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    device120.pushErrorScope("validation");
    
    
    
    render_bundle_encoder1700.pushDebugGroup("group_marker");
    
    device130.destroy();
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    render_bundle_encoder900.setPipeline(render_pipeline902);
    device170.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer903.destroy()
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const sampler1900 = device190.createSampler( { label: "sampler1900" } );
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1900_code = "";
    try {
        shader_module1900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1900 = await device190.createShaderModule({ label: "shader_module1900", code: shader_module1900_code })
    
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    const query1402 = device140.createQuerySet({
        label: "query1402",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    device170.destroy();
    query1501.destroy()
    device140.destroy();
    var shader_module1901_code = "";
    try {
        shader_module1901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1901 = await device190.createShaderModule({ label: "shader_module1901", code: shader_module1901_code })
    render_bundle_encoder902.setPipeline(render_pipeline901);
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    const render_pipeline905 = device90.createRenderPipeline({
        label: "render_pipeline905",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    
    
    
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    var shader_module1902_code = "";
    try {
        shader_module1902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1902 = await device190.createShaderModule({ label: "shader_module1902", code: shader_module1902_code })
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    query903.destroy()
    query904.destroy()
    
    render_bundle_encoder1200.setPipeline(render_pipeline1200);
    device150.destroy();
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query1200.destroy()
    
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer905 = device90.createBuffer({
        label: "buffer905",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group901 = device90.createBindGroup({
        label: "bind_group901",
        layout: render_pipeline901.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer904,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer905,
                },
            },
        ],
    });

    render_bundle_encoder902.setBindGroup(0, bind_group901);
    query901.destroy()
    
    
    
    
    
    
    
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    buffer1200.destroy()
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer906 = device90.createBuffer({
        label: "buffer906",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    
    
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    const buffer907 = device90.createBuffer({
        label: "buffer907",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer908 = device90.createBuffer({
        label: "buffer908",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group902 = device90.createBindGroup({
        label: "bind_group902",
        layout: render_pipeline902.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer907,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer908,
                },
            },
        ],
    });

    render_bundle_encoder900.setBindGroup(0, bind_group902);
    const query1204 = device120.createQuerySet({
        label: "query1204",
        type: "occlusion",
        count: 32,
    });
    query901.destroy()
    query1203.destroy()
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    query1202.destroy()
    
    
    
    buffer906.destroy()
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    
    
    buffer904.destroy()
    
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    device90.pushErrorScope("out-of-memory");
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}