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
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([-0.25, -1.0, -1.0, 0.75, -0.5, 0.5, 0.75, -0.25, -0.25, -0.5, 0.75, 1.0, -1.0, 0.5, 0.75, 0.75, 1.0, -0.75, 0.0, 0.0, 1.0, -0.75, -0.25, -1.0, -0.75, 1.0, -0.75, -1.0, 1.0, -1.0, 0.5, -0.5, -0.5, 0.25, -0.25, -0.5, 0.75, 0.0, -0.5, 0.25, -0.5, 0.5, 0.75, 0.0, 0.0, -0.75, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, -0.25, 1.0, -0.25, 0.0, 0.0, -0.25, -1.0, 0.0, 0.75, 0.5, 0.5, 0.75, 0.5, 0.25, 1.0, -0.5, 0.25, -0.75, 0.5, 0.25, -0.25, -0.5, -1.0, 0.5, -0.75, 0.5, 0.5, 0.75, 1.0, -1.0, -0.5, 0.5, -0.25, 0.0, -1.0, -0.25, 1.0, -0.25, -1.0, 0.75, 1.0, -1.0, 0.75, 0.75, -0.5, -0.5, 0.75, 0.25, ]);
    const array1 = new Float32Array([-0.25, 0.75, 0.5, 0.75, -0.25, -1.0, 1.0, 0.5, -0.75, -0.25, -0.5, 0.5, -0.75, -1.0, 0.75, -0.75, 0.0, -0.5, -1.0, -0.5, 1.0, -1.0, 0.5, 0.5, 1.0, -0.25, 0.0, -0.75, 0.75, 0.0, -0.5, -0.5, -0.5, -0.75, 0.0, -1.0, -1.0, 1.0, 0.5, -1.0, 0.5, -0.75, -0.25, -0.5, 0.25, 0.25, -0.25, -1.0, 0.75, 1.0, -0.25, -1.0, -0.25, -0.75, -0.5, -1.0, 1.0, 0.75, 1.0, 0.5, 0.25, 1.0, -0.5, -0.5, -0.25, 0.0, 1.0, -1.0, 0.75, -0.25, 0.0, 0.5, 0.75, 1.0, 1.0, -1.0, 1.0, 0.25, 0.25, -0.5, 0.25, -0.25, -0.5, 0.0, 1.0, 1.0, 0.25, 0.25, -0.25, -0.5, -0.5, -0.75, -0.75, 0.5, 1.0, -0.75, 0.0, 1.0, 1.0, 0.0, ]);
    const array2 = new Float32Array([0.5, 1.0, -0.25, -0.25, -1.0, 0.5, -0.25, -0.25, -1.0, 1.0, 0.0, 0.5, 0.0, 0.5, 0.5, -1.0, -0.75, -1.0, -0.75, 1.0, 0.25, -0.5, 0.0, -0.5, 0.5, 0.0, 0.75, 0.5, -0.25, 0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.75, 0.0, -0.75, -0.25, 0.75, 0.25, -0.25, -0.25, -1.0, 0.5, -0.5, -1.0, -0.75, -1.0, -0.5, 0.0, -0.75, -0.5, 0.5, 0.25, -0.5, -0.75, -0.25, -0.25, -0.5, -0.25, 1.0, 0.75, 0.5, -0.25, -0.5, 0.0, -0.5, 0.0, 0.25, -0.75, 0.0, 0.75, 0.5, 0.75, 0.0, -0.25, 0.75, -1.0, 0.25, 0.0, 1.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, 1.0, 0.25, 0.0, 0.0, 1.0, -0.5, 0.75, -0.25, 0.75, 0.75, 0.5, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-0.5, -0.5, -0.25, -0.25, -0.25, 0.75, 0.75, -1.0, 0.75, -1.0, 0.75, 0.75, 1.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.25, -0.5, 0.25, -0.5, -0.75, -1.0, 0.25, 1.0, -0.75, 0.0, -1.0, 1.0, -0.25, -0.75, -0.5, 0.75, 1.0, 0.25, 1.0, -0.75, 0.5, 1.0, -1.0, 0.0, -1.0, 0.5, 1.0, 1.0, 0.25, -0.25, 0.75, -1.0, 1.0, 0.75, 0.25, 0.5, 0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 0.5, -0.75, 0.25, 0.0, 0.25, -0.5, 0.0, -0.25, -0.5, -1.0, -1.0, -1.0, 0.5, 1.0, 0.75, -0.25, 0.25, 0.25, -0.5, -0.75, 1.0, -1.0, 0.5, -1.0, -0.5, -0.75, 0.5, 0.0, -0.75, -1.0, 0.75, 1.0, 1.0, -0.5, -1.0, 0.25, 0.75, 0.25, 0.5, 0.5, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    
    const array4 = new Float32Array([0.25, 0.75, 0.75, -1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 0.75, -0.75, 0.25, -0.75, -1.0, 0.75, -0.5, 0.5, 0.75, 0.75, -0.75, 0.25, -0.25, 0.5, 0.25, -0.75, -1.0, 0.0, 0.25, 0.5, 0.25, -0.75, 0.25, -1.0, -0.25, 0.0, 0.5, 0.25, 0.75, -1.0, 1.0, 0.5, -0.5, -0.75, -0.75, -0.25, 1.0, 0.5, -0.75, 0.75, 0.75, -0.75, -0.25, -0.25, -0.25, 0.5, -0.5, 0.5, 0.25, 0.75, -1.0, 1.0, -0.75, 0.0, 0.75, -0.75, 0.5, -0.5, 1.0, -0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 0.0, 0.25, -0.75, -0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 1.0, -0.25, -1.0, 0.5, -1.0, 0.25, 0.75, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, -1.0, -0.25, -0.25, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer001.destroy()
    render_bundle_encoder000.popDebugGroup();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    render_bundle_encoder000.popDebugGroup();
    
    const array5 = new Float32Array([0.5, 0.25, 0.25, 0.0, 0.25, -0.75, -1.0, -0.25, -1.0, -0.25, 0.25, 0.5, 0.5, 0.75, -1.0, -0.75, 0.75, -1.0, 0.75, -1.0, -1.0, 0.75, 0.0, 0.25, 0.25, -0.5, 0.0, -0.25, 0.0, 0.5, 0.5, -0.75, 0.5, 0.75, -0.25, 0.5, 0.75, 0.75, -0.75, 0.0, 0.0, 0.25, 0.0, 0.5, 0.75, 0.5, -0.5, 0.75, 0.75, -1.0, -0.5, 0.5, 0.25, -0.5, 1.0, 0.0, -0.75, -0.75, 0.25, 0.75, -0.75, -1.0, -0.75, 0.5, 1.0, -0.5, -0.25, 0.75, 1.0, 0.75, 0.5, 0.5, -0.25, 0.75, -1.0, 0.75, -0.75, 0.75, -1.0, 0.0, 0.0, 0.75, 0.0, 0.25, -1.0, 1.0, 0.5, 0.75, -1.0, 1.0, -0.5, 0.5, 0.25, 0.25, -0.5, -0.5, 1.0, -0.75, 0.5, -0.5, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    device00.destroy();
    
    
    const array6 = new Float32Array([0.75, -0.25, 0.0, 0.5, 0.0, -0.5, -0.5, -0.5, 0.5, 1.0, -0.5, 0.25, 0.0, -1.0, -0.75, 0.75, 0.25, -0.5, -0.25, 0.25, -0.5, -0.25, 0.25, -0.75, -0.75, 0.75, -0.5, 0.75, -0.25, -0.25, -0.5, 1.0, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 0.25, 0.0, -0.75, -0.25, 1.0, 0.5, -0.25, 0.0, 0.5, 1.0, 0.25, 0.75, -0.25, 1.0, -0.25, 0.25, 0.75, -1.0, -0.5, 0.0, 0.25, 1.0, 0.25, 0.75, -0.25, 0.75, -0.5, 0.75, 0.75, -0.25, 1.0, 1.0, -0.5, -0.5, -0.25, -1.0, -1.0, 0.25, -0.25, 0.5, 0.0, 0.25, -0.25, -0.25, -0.75, 0.5, 0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 0.0, 1.0, 0.75, 0.75, 0.0, -0.5, 1.0, -1.0, 0.5, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array7 = new Float32Array([-1.0, 1.0, 0.75, -0.25, 0.75, 0.75, 1.0, 0.75, -0.5, -1.0, -1.0, -0.5, 0.25, -0.75, 0.0, 1.0, 1.0, 0.0, 0.25, 0.25, -0.75, -0.25, -0.75, 0.5, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, -0.25, -0.75, -1.0, 0.25, -0.25, 0.5, -0.5, 0.25, 1.0, -0.5, -0.75, 1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 1.0, 0.5, -0.5, 0.0, -1.0, -0.5, 0.5, -0.75, 0.75, 1.0, 1.0, -0.25, -0.25, -0.75, -0.5, 0.25, 0.75, -0.75, -1.0, -0.5, -1.0, -0.75, -0.75, -0.75, 0.0, -0.75, 1.0, -0.25, -0.25, -1.0, 1.0, -0.75, 1.0, -1.0, 0.0, -0.25, 0.5, 0.75, 0.75, 1.0, 0.75, 0.5, 0.5, -0.75, 0.25, 0.75, -1.0, -0.75, 0.5, 0.5, 0.75, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("internal");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer300.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array8 = new Float32Array([-1.0, 0.25, 0.75, -0.25, 0.0, 0.5, -0.5, -0.5, 1.0, 0.75, 0.25, 1.0, 0.5, -0.25, -0.5, 1.0, 1.0, 0.5, -1.0, -0.25, -1.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.5, -0.75, 0.0, 0.0, -0.75, 0.5, 0.0, 1.0, 0.5, 0.25, 0.75, -0.5, -1.0, -0.75, 0.75, -1.0, -0.5, 0.5, -0.25, 0.0, -0.25, 1.0, 0.25, 0.5, -0.5, 0.0, -0.25, 0.25, 0.25, 1.0, -0.75, 0.25, 0.25, -1.0, 0.25, 0.0, -0.5, 1.0, -0.5, -0.5, -0.75, 0.0, 0.0, -0.5, 0.75, -1.0, 0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 0.75, 0.5, -1.0, 0.75, -0.5, 0.75, -0.25, 0.0, 0.5, 0.75, 1.0, 0.75, 0.25, 0.75, -0.75, -0.25, -0.5, 0.0, -1.0, -1.0, 0.5, 0.75, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
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
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device30.destroy();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    device40.pushErrorScope("validation");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const array9 = new Float32Array([0.0, -0.25, -0.5, 1.0, 0.25, 0.25, 0.25, 0.0, 0.75, -0.25, -0.75, 0.75, 0.75, 1.0, 1.0, 0.0, 0.25, 0.5, -0.25, 0.75, 0.0, 0.75, -1.0, 0.5, 0.0, -1.0, 1.0, 1.0, -0.25, -0.75, 0.0, 0.0, -0.25, 0.75, -1.0, -1.0, -0.5, -1.0, -1.0, -0.5, -1.0, 1.0, 1.0, 0.25, -1.0, 0.25, -1.0, -0.25, 1.0, 0.0, -0.75, -1.0, 0.25, -0.5, 0.25, 1.0, -0.25, 0.75, 0.5, -1.0, 1.0, -1.0, -0.5, 0.75, 0.75, -0.75, -0.75, 0.25, -0.5, -0.5, 0.5, 1.0, 1.0, -0.25, 1.0, 1.0, 0.75, 0.75, 0.75, 0.5, -0.5, 0.25, -0.25, -1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, -1.0, -0.25, -0.5, 1.0, 0.25, 0.75, -0.5, -1.0, 0.25, -0.75, ]);
    
    device20.pushErrorScope("out-of-memory");
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    render_bundle_encoder400.setPipeline(render_pipeline402);
    buffer400.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.popDebugGroup();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device50.pushErrorScope("validation");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array10 = new Float32Array([0.75, -0.5, -0.5, -1.0, -0.75, -1.0, -0.75, -0.5, -0.5, 0.25, 0.75, 1.0, 1.0, 0.25, -1.0, -1.0, 0.75, 0.5, 0.0, 0.75, -0.75, -0.75, 0.0, -1.0, -0.5, 1.0, -0.5, 0.0, -0.25, -0.75, 0.0, 0.25, 0.0, 1.0, -0.25, 0.75, -0.5, 0.5, 0.75, -0.75, -1.0, 0.25, -1.0, -0.5, -0.75, -0.75, 0.0, 0.25, 0.0, 0.0, -0.25, 0.75, -0.25, 0.75, -1.0, -0.5, 0.0, 1.0, -0.75, 0.0, -0.5, -0.25, -0.5, -0.75, -0.75, 0.25, 0.5, -1.0, 0.75, -0.25, 0.0, 0.75, 0.5, 0.25, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -0.5, 0.5, -0.25, -0.5, 0.5, 1.0, 1.0, -1.0, 0.0, -1.0, 1.0, 0.75, 0.5, 0.75, 1.0, 0.25, 0.75, 0.5, 0.5, 0.0, ]);
    
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer200.destroy()
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer201.destroy()
    render_bundle_encoder401.popDebugGroup();
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.destroy();
    buffer402.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.setVertexBuffer(0, buffer400);
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer202, 0, array10, 0, array10.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer202.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder400.draw(3);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.queue.writeBuffer(buffer408, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer408, 0, array0, 0, array0.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    buffer407.destroy()
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder400.popDebugGroup();
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    const array11 = new Float32Array([0.25, 0.25, 0.75, 0.75, 0.5, 0.5, -0.25, 0.0, -0.25, 0.5, 0.25, -0.5, -0.25, 1.0, -0.25, -0.25, -1.0, 0.0, -0.5, -0.25, -0.75, 0.75, -0.25, -0.25, 0.25, 0.75, 0.5, -0.5, -0.75, -1.0, -0.25, 1.0, 0.25, 1.0, 0.25, -1.0, 0.25, 0.75, 1.0, 0.0, -0.5, 0.0, 0.0, 0.75, -0.5, 0.25, 0.0, 0.0, 0.0, -1.0, 1.0, 1.0, -0.5, -0.75, 0.5, 0.25, 0.25, -0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.75, -1.0, 0.0, -1.0, 0.25, -1.0, 0.0, 0.75, -0.25, 0.25, 0.25, 1.0, -1.0, 0.0, 0.0, -0.75, 1.0, 0.25, 0.5, 0.25, 1.0, -0.25, 0.0, 0.25, -0.75, 0.5, 0.0, -0.25, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer408, 0, array0, 0, array0.length);
    buffer405.destroy()
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer401.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    device20.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    buffer404.destroy()
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device20.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer408, 0, array8, 0, array8.length);
    
    render_bundle_encoder400.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.setPipeline(render_pipeline405);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group402);
    
    
    
    device70.destroy();
    buffer500.destroy()
    device40.queue.writeBuffer(buffer408, 0, array7, 0, array7.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const array12 = new Float32Array([0.75, 0.5, -0.75, 0.5, -0.5, 0.25, -0.75, 0.75, -0.5, -0.25, -1.0, -1.0, 0.5, 0.25, -1.0, 0.75, 0.5, 0.0, 0.75, -1.0, -1.0, -0.5, 0.5, -0.75, -0.25, -0.25, -0.75, 0.25, 0.75, -0.5, -0.5, -1.0, 0.75, -0.25, -0.25, 0.25, -0.75, -0.25, 0.75, -1.0, -0.75, 0.75, 0.75, -1.0, -1.0, 0.0, 0.75, 0.25, 1.0, -1.0, 0.75, 0.5, -0.25, 0.25, 0.25, -0.75, 0.5, 0.0, 1.0, -0.5, 0.25, -0.25, 0.5, 0.75, -0.5, -0.75, -0.5, -0.75, 1.0, 0.5, -0.25, -0.75, 1.0, -0.75, -1.0, 0.0, 0.0, 0.25, 0.25, 0.5, 0.0, -0.75, 0.25, -1.0, -0.25, 1.0, -1.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 1.0, 1.0, ]);
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeBuffer(buffer501, 0, array12, 0, array12.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array13 = new Float32Array([0.5, 0.5, -1.0, 0.0, -0.25, 0.25, -1.0, -0.5, -0.75, 0.5, 0.0, 0.75, -0.5, 0.75, 0.5, 0.5, -0.25, 0.75, 1.0, 0.5, -1.0, 0.25, -0.25, 0.75, 0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.0, -1.0, 0.75, 1.0, 0.0, 1.0, -0.25, -0.25, 0.75, -0.5, -0.5, 1.0, -0.5, -0.25, -0.25, -1.0, -0.25, -0.25, -1.0, 0.75, -1.0, 0.25, -0.25, 0.25, -0.25, 0.5, -1.0, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, -0.75, -1.0, -0.25, -0.25, 0.25, 0.75, -0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 0.0, 0.0, -0.5, 0.5, 0.0, -1.0, 0.25, -0.75, 0.0, -0.75, -0.5, 0.25, -0.5, 0.75, 0.5, -0.5, -0.5, -1.0, 0.25, 0.75, ]);
    
    buffer408.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    buffer501.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    render_bundle_encoder502.setPipeline(render_pipeline500);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device50.destroy();
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    render_bundle_encoder401.setVertexBuffer(0, buffer400);
    render_bundle_encoder201.popDebugGroup();
    device20.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer4010.destroy()
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    render_bundle_encoder402.setVertexBuffer(0, buffer400);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder402.popDebugGroup();
    
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    device40.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device110.pushErrorScope("out-of-memory");
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array14 = new Float32Array([0.0, 0.75, 0.5, 0.0, 1.0, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, -0.75, -0.5, -1.0, 0.0, 0.75, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.25, -1.0, -1.0, 0.5, -0.5, 0.25, 0.25, -1.0, -0.25, 0.5, 0.0, 0.5, 0.75, -0.25, 0.5, 0.5, -0.25, 1.0, 0.25, 1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 1.0, -0.5, -0.25, 0.5, 0.75, -0.25, -0.75, -0.5, -1.0, 0.5, 0.5, 0.5, 1.0, -1.0, -0.75, -1.0, 0.0, 0.75, -0.75, -0.5, -1.0, 1.0, -0.75, 0.75, -1.0, 0.25, -0.75, -0.75, -0.5, -0.25, -0.5, -0.75, 0.25, 1.0, -0.5, -1.0, 0.5, 0.75, -0.75, 0.75, -0.75, -0.75, 0.0, -0.75, 0.75, -1.0, 0.5, 0.75, -0.5, -0.5, -0.5, 0.0, -0.5, ]);
    device100.pushErrorScope("validation");
    
    device110.destroy();
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder1002.pushDebugGroup("group_marker");
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    buffer1000.destroy()
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder1002.popDebugGroup();
    
    device90.queue.writeBuffer(buffer900, 0, array13, 0, array13.length);
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    device90.destroy();
    
    
    
    
    device130.destroy();
    
    device80.destroy();
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    device140.pushErrorScope("validation");
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device140.destroy();
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    render_bundle_encoder1002.pushDebugGroup("group_marker");
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    render_bundle_encoder1001.insertDebugMarker("marker");
    
    
    device120.pushErrorScope("out-of-memory");
    render_bundle_encoder1002.insertDebugMarker("marker");
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    
    device100.pushErrorScope("validation");
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    render_bundle_encoder1000.insertDebugMarker("marker");
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    
    
    render_bundle_encoder1501.pushDebugGroup("group_marker");
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    render_bundle_encoder1002.popDebugGroup();
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1005,
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
            module: shader_module1005,
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
    
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    
    render_bundle_encoder1002.pushDebugGroup("group_marker");
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}