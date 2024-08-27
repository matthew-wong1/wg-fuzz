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
    const array0 = new Float32Array([0.25, 0.25, -0.75, -1.0, 0.75, 0.25, 0.25, -0.25, 0.0, 0.5, -1.0, 0.25, 0.25, 1.0, -0.25, 0.5, -0.75, 0.5, -1.0, -1.0, 1.0, -0.75, -0.5, -1.0, -0.75, 0.5, -1.0, 0.75, 0.25, 0.75, -0.25, 0.5, 1.0, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, -0.75, -1.0, 0.0, -0.75, 0.5, 0.75, -0.25, 1.0, 0.0, -1.0, 0.75, 0.5, 0.5, -0.25, -0.5, 0.75, -0.25, -1.0, 0.25, -0.25, -0.5, -0.25, 0.0, -1.0, -0.25, 1.0, 1.0, 0.5, -0.75, -0.25, -0.5, -0.25, -0.75, 0.25, 0.0, -0.25, 0.25, 0.25, 1.0, 0.25, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, 0.25, 0.0, -0.25, 0.5, 0.75, -0.75, 0.25, 1.0, 0.25, -0.25, -1.0, 0.75, 0.25, 1.0, -0.75, ]);
    const array1 = new Float32Array([0.5, -1.0, -0.5, 0.25, -1.0, 0.0, 0.25, 0.0, -1.0, 0.75, 0.25, -0.25, 0.25, -1.0, -0.5, 0.5, -1.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.75, 0.25, 0.75, -0.5, 1.0, 0.25, -1.0, 0.5, 0.75, 0.25, 1.0, -0.75, 0.75, 1.0, 0.0, 0.25, -0.75, -0.5, -0.25, 0.25, -0.75, 1.0, -0.75, 0.75, -0.75, 0.0, -0.75, -0.75, -0.75, -1.0, 1.0, 0.0, 0.25, -1.0, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 0.5, 0.75, -1.0, 0.25, 0.75, -0.25, -0.5, -0.75, -0.5, 0.5, 0.75, -1.0, 1.0, 0.75, 0.25, 1.0, 0.5, -1.0, -1.0, 0.75, 0.75, 0.75, 0.5, 0.75, 0.75, 0.5, -0.25, -0.25, 0.0, 0.0, 0.0, -0.5, -1.0, -0.25, 1.0, 0.0, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.75, -0.75, -0.75, -0.5, 0.25, 0.25, 0.5, -0.75, 0.0, 1.0, 0.75, 0.5, -0.75, 0.5, -0.25, 0.5, 0.5, 1.0, 1.0, -0.5, -1.0, 0.0, -0.75, -0.75, 0.75, -0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -0.25, -0.5, 0.75, -1.0, -1.0, 0.75, -0.5, 1.0, 0.25, -0.25, -0.5, -1.0, 0.0, 0.25, 1.0, -0.75, -0.5, 0.5, 0.0, -1.0, 0.0, 0.0, 0.5, -1.0, 1.0, -1.0, -0.5, -1.0, -0.75, -1.0, 0.25, -0.5, 0.25, 0.75, -1.0, 0.25, 0.25, -0.75, 0.75, -0.25, 1.0, -0.5, -0.25, -0.25, -0.5, 0.0, -0.5, 0.75, 0.5, -0.25, 0.0, 0.75, 0.0, 0.25, 0.5, 1.0, 1.0, -0.75, 0.25, 1.0, 0.5, -0.5, 1.0, 0.75, -0.75, -0.75, -0.75, -0.25, 0.25, ]);
    const array3 = new Float32Array([-0.25, -0.75, 1.0, 0.0, -0.75, -1.0, 1.0, -0.5, 0.25, 0.0, 0.25, 0.75, 0.75, -0.5, 1.0, 1.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.75, 1.0, -0.75, -0.75, -0.75, 1.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.0, 0.5, 0.0, -0.5, 1.0, -0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.25, 1.0, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, -0.5, -1.0, 0.5, 1.0, 0.0, -0.75, 0.25, 0.75, -0.5, -0.75, -0.25, -0.75, -0.25, 1.0, 0.5, -0.5, -1.0, -0.75, 0.75, -0.75, 0.0, -0.75, 0.0, 0.0, 0.25, 0.75, 0.25, -1.0, -0.25, 0.0, 0.75, 0.75, 1.0, 0.75, -0.25, -0.25, -1.0, -0.75, 1.0, 0.75, 0.25, 0.75, 0.5, -0.75, 0.5, -1.0, 0.5, 1.0, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device20.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer500.destroy()
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const array4 = new Float32Array([1.0, -0.75, 0.5, -0.75, -1.0, -1.0, 1.0, -0.75, 1.0, -0.25, -0.75, 1.0, -0.25, 0.0, 0.75, -0.25, -0.25, -0.75, -0.5, 0.5, 0.75, 0.75, 0.0, 0.25, -0.25, 0.5, 0.25, -0.5, 0.5, -1.0, 0.0, -0.25, 0.75, -0.25, -0.25, -1.0, 0.5, 0.25, 1.0, -0.75, -0.75, 0.25, 1.0, -0.25, 0.0, 0.25, -1.0, 0.25, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, 0.75, -0.25, -0.75, 0.5, 0.75, 0.0, -0.25, 0.0, 0.75, 0.75, -0.75, 0.5, 0.75, 0.25, -0.25, 0.75, -0.5, -0.75, 0.25, 0.25, -0.25, -0.25, 0.25, 0.75, -0.5, -0.25, -0.5, 0.5, -1.0, -0.25, 1.0, 0.0, 0.25, -0.5, -0.75, 0.5, 1.0, 1.0, 0.0, -0.25, 0.5, -1.0, -0.5, 0.75, 0.0, 0.75, ]);
    buffer301.destroy()
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer300.destroy()
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    device30.destroy();
    const array5 = new Float32Array([0.5, 1.0, 1.0, -0.25, -0.25, 0.75, 1.0, 0.75, -0.25, -1.0, -1.0, 0.75, 0.5, 0.75, 0.0, -0.25, 0.5, -0.5, 0.25, 0.75, 0.5, 0.75, 0.5, -0.5, -0.5, 0.5, -0.75, 0.0, -0.25, -0.5, 0.0, -0.5, 0.5, -0.25, -1.0, -1.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.25, 0.75, 0.25, 0.75, -0.5, 0.75, 0.25, -0.25, 1.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, 0.25, 1.0, 0.0, -0.75, 0.5, 0.0, -0.5, 1.0, -0.25, -0.25, 0.25, -0.25, 0.0, 0.0, 0.5, 0.25, 0.0, 1.0, 0.0, -0.25, 0.0, -0.5, -0.75, 0.5, 0.75, -0.5, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, -0.5, -0.25, 1.0, -1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 1.0, 1.0, 0.25, ]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.destroy();
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const array6 = new Float32Array([-0.25, -1.0, -0.25, -1.0, 0.5, 1.0, -0.25, 0.0, 1.0, 0.75, 0.75, 1.0, 0.75, 0.5, -1.0, 0.25, 0.25, 0.0, -0.5, 0.5, -0.75, 0.25, 0.75, -1.0, -0.75, -1.0, -0.5, -0.5, 0.0, 1.0, 0.5, 0.5, -0.25, -1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.75, 0.25, -1.0, 0.0, -0.25, 0.5, 0.0, -0.5, -1.0, 0.25, 1.0, 1.0, -0.75, 0.5, -0.75, -1.0, 0.0, -0.25, 0.75, 0.0, -0.25, 0.5, 0.0, 1.0, -0.75, 0.75, 0.75, -0.75, 0.5, 0.75, 0.5, 0.0, 0.0, -0.75, 0.75, -1.0, -0.25, -0.75, 0.5, 0.0, -0.25, -1.0, -1.0, -0.25, -0.75, 0.75, -0.25, 0.75, 0.5, 0.25, 0.25, -1.0, -0.5, -1.0, -0.25, 1.0, -0.75, 0.0, -1.0, 1.0, 0.75, ]);
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
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
    
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const array7 = new Float32Array([-0.75, -0.5, 0.0, 0.5, -0.25, -0.25, 1.0, 0.75, -0.25, 0.25, -1.0, -0.25, -0.5, -1.0, -0.5, -0.25, -1.0, -0.75, -0.5, 0.25, -0.5, -0.5, -0.25, 0.75, 0.0, 0.5, -1.0, 1.0, 0.5, 0.75, 1.0, -1.0, 1.0, -0.25, -0.25, -0.75, 1.0, -0.5, -1.0, -0.25, 0.5, 0.25, -0.5, 0.5, -1.0, 0.75, 0.5, -0.25, 0.0, 0.5, 1.0, -0.5, 0.75, 0.25, 0.5, 0.25, 0.25, -1.0, -0.25, -0.5, 0.0, 0.5, 0.75, 1.0, -1.0, -0.75, 0.5, -1.0, 0.0, -1.0, 0.75, 0.75, 0.0, 0.25, -1.0, 1.0, 0.5, 1.0, -1.0, 1.0, -0.5, -0.5, 0.75, 0.0, -0.75, 0.75, 0.5, 0.75, -0.75, 1.0, 1.0, 0.0, 0.0, -0.5, -0.75, 0.5, 1.0, 0.25, 1.0, -0.75, ]);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    
    
    
    buffer501.destroy()
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    
    
    
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
    
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    buffer501.destroy()
    
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
    
    
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder403 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder403",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    buffer400.destroy()
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module509.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    render_bundle_encoder403.setPipeline(render_pipeline401);
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    
    
    render_bundle_encoder402.setPipeline(render_pipeline401);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    
    buffer400.destroy()
    
    
    render_bundle_encoder403.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device40.queue.writeTexture({ texture: texture403 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device50.destroy();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
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
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.25, 0.75, 0.75, 0.0, 0.5, 1.0, 0.5, -1.0, -0.75, -0.25, -1.0, -0.75, 1.0, 0.25, -0.5, -0.75, 1.0, 0.25, -0.25, -1.0, -0.25, 0.5, 1.0, -1.0, 0.0, 1.0, -1.0, -0.5, -0.5, 0.0, 0.75, -1.0, -0.5, -1.0, -1.0, -1.0, -0.25, -1.0, -0.5, 0.0, -0.25, 0.75, 1.0, -0.5, 0.5, 1.0, 0.75, 1.0, -0.25, 0.25, 1.0, 0.25, 0.75, -0.25, -1.0, 0.5, 1.0, 1.0, 0.5, 0.5, 1.0, -1.0, 0.0, 1.0, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, 0.5, 0.5, 0.75, 0.75, -0.25, 0.0, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, -0.25, 0.75, 0.0, 0.5, -0.75, -1.0, -0.5, -0.5, -0.25, -0.5, 0.5, 0.75, 0.5, 0.5, 0.0, 0.5, 0.5, 0.0, ]);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device00.destroy();
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    buffer404.destroy()
    
    device40.queue.writeTexture({ texture: texture403 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
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
    
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    buffer403.destroy()
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    
    
    buffer405.destroy()
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const texture_view4014 = texture401.createView({ label: "texture_view4014" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([1.0, 0.5, -0.5, 0.25, -0.5, -0.5, 1.0, -0.25, -0.25, 0.75, -1.0, 1.0, -0.5, -0.25, 0.75, -0.25, 0.5, 0.75, 1.0, -0.25, 0.5, -0.75, 0.0, 0.0, 0.25, 0.0, 0.25, -0.25, -0.5, 0.0, 0.0, -0.25, -0.75, -1.0, -0.25, 0.75, 0.25, -1.0, 0.75, 0.75, -0.5, -1.0, -0.25, 0.0, -1.0, 0.5, 0.0, 0.25, -0.75, -0.75, -0.5, -0.5, -0.5, -0.5, 0.5, 1.0, 0.5, -0.75, -1.0, -1.0, -1.0, -0.25, -0.25, -0.5, 0.25, 0.25, -0.25, 0.0, 0.75, -0.75, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.5, -0.25, -0.25, 0.0, 1.0, -0.5, -0.75, -1.0, 0.25, 1.0, -0.75, 0.0, 0.0, 1.0, -0.25, 0.25, 0.25, -0.75, 1.0, 0.25, 0.25, -0.25, 1.0, ]);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer406.destroy()
    
    
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const array10 = new Float32Array([-0.5, 0.5, -0.25, -0.75, 0.5, 0.25, -0.75, 0.75, 0.5, 1.0, -0.5, -0.25, 0.5, 0.5, -0.5, 1.0, -0.75, 0.5, 1.0, 0.0, 0.5, -1.0, 0.0, 0.75, 1.0, 0.75, 0.75, 0.0, -0.25, 0.25, 0.0, 0.0, 0.25, 0.0, -1.0, 0.5, -1.0, 0.0, -0.25, 0.25, 0.25, -1.0, 0.5, -0.5, -0.25, -0.75, 0.0, -0.5, -1.0, -0.75, 0.75, 0.25, -0.75, 0.0, -0.75, 0.25, -1.0, -0.25, -0.75, 0.0, 0.5, 0.5, 0.5, -0.5, -0.75, 0.75, 0.25, 0.0, -0.75, -0.5, -0.5, 1.0, -0.5, -0.25, 0.0, -0.75, -0.75, -0.75, 0.0, 0.0, 0.75, -0.5, -1.0, 0.0, 0.75, 0.0, -0.25, 0.25, 0.25, 0.25, -0.25, 1.0, 0.25, 0.5, -0.5, 0.75, 0.75, 0.5, -0.25, -0.25, ]);
    device40.queue.writeTexture({ texture: texture403 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder501.setPipeline(render_pipeline502);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    device60.destroy();
    
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array11 = new Float32Array([-0.5, 0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 0.5, 0.25, 0.25, 0.0, 1.0, 0.25, -0.5, -0.75, 0.75, 0.0, 0.5, 0.0, 0.25, -0.25, 1.0, 0.75, 0.5, 0.75, 0.25, -0.5, 0.25, -0.75, -0.5, -1.0, 0.0, 1.0, -0.25, 1.0, 0.5, 0.25, -1.0, 0.75, 0.75, 1.0, 0.25, -1.0, 1.0, -0.5, 0.75, -0.5, 0.75, -1.0, 1.0, -1.0, 1.0, -0.25, 0.0, -0.5, -0.25, -0.25, 0.75, 0.0, -0.25, 1.0, -0.25, 1.0, -0.25, 1.0, -0.5, 0.5, 1.0, 0.25, -0.5, 0.25, 1.0, -0.5, -1.0, 0.0, 0.25, -0.5, 0.5, 0.5, 1.0, 0.75, -0.5, 0.5, 0.0, -0.25, 0.0, 0.25, 0.75, 0.5, 0.5, 0.5, 0.25, -0.75, 0.0, 0.75, 1.0, -0.25, -0.5, 0.0, -1.0, ]);
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
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
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array12 = new Float32Array([-0.75, -1.0, 0.25, -0.75, -0.25, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, 0.75, -0.75, 0.75, 0.25, -0.75, -0.5, -0.25, -1.0, 0.0, -1.0, 0.0, -1.0, -0.25, 1.0, -0.25, 1.0, -1.0, 0.25, -1.0, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, 0.25, 1.0, 1.0, 0.75, -0.25, 0.25, 1.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.75, -0.5, 0.75, 0.0, 0.5, -1.0, 0.0, 0.75, -1.0, 0.25, 0.75, -1.0, -0.5, 0.5, 0.5, 0.75, -1.0, -0.75, 0.25, 0.5, 0.25, -1.0, 0.25, -0.25, 0.0, 0.25, 1.0, 1.0, 0.75, 0.5, 0.5, 1.0, -0.75, -1.0, 0.5, 1.0, -1.0, 0.75, -1.0, -0.75, 1.0, -0.25, 0.5, 0.0, 0.0, 1.0, -0.25, -0.25, -0.75, 0.75, -1.0, 0.25, ]);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device00.destroy();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array13 = new Float32Array([-0.25, -1.0, -0.5, 0.0, 1.0, 0.5, 1.0, -1.0, 0.75, 1.0, -0.75, 0.5, 0.25, -0.75, 0.0, 0.0, -0.25, 1.0, 0.75, 0.5, -0.5, 0.5, -0.5, -1.0, 1.0, 0.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.25, 0.25, 0.75, -0.5, 1.0, -0.5, -0.5, -0.25, -0.5, 0.5, 0.75, -0.75, -0.25, -0.25, -0.75, -0.25, 0.75, 1.0, -0.75, 0.75, -0.5, -0.5, 1.0, 0.75, 0.5, 0.5, 0.75, 1.0, 0.25, -0.25, -0.5, -0.25, 0.5, -1.0, 1.0, -1.0, 1.0, -0.5, 0.0, -0.25, -0.5, 0.0, 0.25, 1.0, -0.25, 0.25, 1.0, 0.0, -0.75, -1.0, -0.5, 0.0, 0.75, -0.5, 0.5, 0.25, -0.75, -0.25, -0.5, 0.75, -0.5, -0.75, 0.25, -1.0, -0.5, 1.0, 0.0, -0.5, ]);
    device70.destroy();
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    
    
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.destroy();
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const array14 = new Float32Array([-0.25, 1.0, 1.0, -0.5, 0.5, -0.25, -1.0, -0.75, 0.75, -1.0, -0.75, -0.5, -0.75, 0.0, 0.0, 1.0, 0.0, 0.25, 0.0, 0.0, 0.75, 0.5, 1.0, -1.0, 0.75, 0.25, 1.0, 1.0, 0.75, 0.25, 0.25, -0.25, 0.75, 0.5, -0.75, 0.0, 0.5, 1.0, 1.0, 0.5, -0.75, -1.0, 0.0, -0.75, -0.5, 0.0, 0.5, 0.5, -0.25, -1.0, 0.75, -0.5, 0.75, -1.0, -0.5, -0.25, 0.75, -1.0, -0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 1.0, -1.0, -1.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.25, 0.25, -1.0, -0.75, 0.25, 0.75, -0.75, -0.75, 0.5, 0.5, 0.0, 0.25, 0.75, 0.5, 0.25, -0.25, -0.75, 0.75, 1.0, -1.0, -1.0, -1.0, 0.75, 0.0, 0.75, -0.5, ]);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    buffer802.destroy()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    buffer801.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    device20.destroy();
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
}