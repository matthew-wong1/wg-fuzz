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
    
    
    
    
    const array0 = new Float32Array([-0.5, 0.0, 0.5, 0.0, -1.0, -1.0, -0.75, -0.5, 0.75, 0.5, 0.25, 0.5, 0.0, -0.5, -0.5, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, 0.5, -0.5, 0.25, -0.5, 0.5, 1.0, 1.0, 1.0, -0.75, 0.75, 0.75, 0.75, -0.25, -0.25, 0.75, 0.0, -1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 0.0, -0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -0.5, 0.25, -0.25, 0.75, -0.75, -0.25, 0.0, 0.25, -0.25, -0.75, -0.75, -0.25, 1.0, 0.5, -0.25, -0.5, -0.5, 0.75, 0.5, -0.25, 1.0, 1.0, 0.25, 0.25, 1.0, -1.0, 0.25, 0.5, -1.0, 0.0, 1.0, 0.0, -0.5, 0.5, 0.75, -0.5, -0.75, -0.25, -0.25, -1.0, 0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.75, 1.0, 0.0, 0.75, ]);
    
    
    
    const array1 = new Float32Array([-0.75, 0.25, -0.5, -0.75, -1.0, 0.25, 0.25, -0.5, -0.5, 0.75, -0.75, 0.75, 0.25, 0.5, 1.0, -0.25, -0.5, 0.5, 0.0, 0.5, -1.0, -1.0, -1.0, -1.0, -0.5, -0.75, -0.25, -1.0, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.5, 0.5, -1.0, 0.75, -0.75, -0.5, 0.75, -1.0, -1.0, -0.75, 0.25, 0.25, -0.25, 0.25, 0.0, 0.75, -0.75, 0.25, -0.25, -0.75, -1.0, 0.25, 0.25, -0.5, -1.0, 0.25, 0.0, -0.25, 0.0, 0.5, 0.5, 0.0, -1.0, 0.0, 0.75, 0.75, -0.25, 0.25, 0.25, 0.0, -0.5, -0.75, -0.25, 0.75, 0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -0.75, 0.25, 0.75, 0.5, -0.25, 0.0, -0.75, -0.75, 0.25, 0.25, -0.5, -0.25, ]);
    const array2 = new Float32Array([-0.5, 0.25, -1.0, 0.25, -0.5, -0.5, -0.25, -0.25, 0.0, 0.25, -0.5, 0.75, -0.75, -1.0, -0.5, 1.0, -1.0, -1.0, 1.0, -1.0, -0.5, 1.0, 1.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.75, -0.5, 1.0, -0.5, -0.75, 1.0, -0.75, -0.75, -0.75, 1.0, 0.75, -0.75, 1.0, 0.5, 1.0, -0.5, -0.25, -1.0, 0.25, 0.25, 1.0, -1.0, 0.25, -1.0, -0.75, 1.0, -0.5, -0.5, 0.75, -0.75, 1.0, 1.0, -0.5, 0.25, -1.0, 0.25, 0.25, 0.75, 0.75, 0.75, -0.25, -1.0, 0.25, -0.5, -1.0, 1.0, 0.5, -0.25, 0.25, 1.0, -0.5, 0.0, -1.0, 0.0, -1.0, 0.5, -0.25, 0.25, 0.25, 0.75, 1.0, -0.25, -1.0, -0.25, -0.25, 0.75, 0.5, 0.0, 0.25, 1.0, 1.0, 0.0, ]);
    const array3 = new Float32Array([-0.75, -0.75, -0.75, -0.5, 0.0, -0.5, -0.25, 0.0, 0.0, -0.75, 1.0, 1.0, -0.75, -1.0, -0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.0, 1.0, 0.25, 0.75, -0.75, 0.75, 0.0, -0.75, -0.25, 0.75, 1.0, 0.25, 0.75, -1.0, -0.75, 0.0, 1.0, -1.0, -0.5, 0.5, 0.5, 0.25, -1.0, 1.0, 0.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.5, -0.75, -0.25, 0.75, 0.5, -0.5, -0.75, 1.0, -0.25, 0.0, -0.25, 0.25, -0.5, 0.5, 0.75, 0.25, -0.75, -0.75, 0.5, 1.0, -0.5, -0.5, 1.0, -0.25, 0.0, -0.5, -0.75, -1.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.75, 1.0, -1.0, 0.5, 1.0, 0.25, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.0, 0.75, -1.0, -0.75, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    
    device10.destroy();
    
    const array4 = new Float32Array([1.0, -0.25, -0.5, -0.25, -0.5, -1.0, -1.0, 0.0, 1.0, -0.25, 0.75, -1.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.5, 0.5, -0.5, -0.25, 0.5, 0.0, 0.5, -0.25, -0.75, 0.75, 0.75, 0.25, 0.5, 1.0, 0.25, 0.75, 0.5, 0.75, -0.25, 0.0, -0.25, 1.0, 1.0, -1.0, -0.25, 0.75, -0.75, 0.25, 0.0, 0.5, -0.5, -0.5, 0.0, -0.5, -0.25, 0.75, 0.5, 0.5, 0.25, -1.0, -1.0, 0.5, -1.0, 0.75, -1.0, -0.25, 0.75, -0.5, 0.75, 0.75, -0.5, 0.0, -0.5, 1.0, -0.75, 1.0, -0.25, -0.5, 0.0, 0.75, -0.25, 0.0, 0.5, -0.5, 0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 0.25, 1.0, -0.75, -0.5, 0.75, 1.0, -1.0, 0.5, 0.0, -0.75, -1.0, -0.75, 0.0, ]);
    const array5 = new Float32Array([0.75, 0.5, 0.25, -0.5, -0.25, -0.25, -0.5, -0.75, 0.5, -0.25, 0.25, -0.25, 0.25, 1.0, -1.0, -0.25, -1.0, -0.25, -0.25, 0.75, -0.75, 0.0, -0.5, -0.25, -0.5, 0.25, 0.5, -1.0, 0.5, 0.75, 0.25, 0.25, -0.75, -1.0, 1.0, -0.5, 1.0, 0.25, -0.75, -1.0, -0.75, -0.75, -0.5, 1.0, 0.5, 0.75, 0.5, -0.5, -0.75, 0.5, 0.0, 0.5, -0.25, -0.75, -1.0, 0.5, 1.0, -1.0, -0.25, 0.0, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, 1.0, 0.25, -1.0, -0.25, 1.0, -1.0, 1.0, -1.0, 0.5, 1.0, 0.5, 0.5, -1.0, 0.0, -0.25, 0.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.0, -1.0, 0.5, 0.5, 0.75, 0.25, 0.75, 0.5, 1.0, -0.5, 0.25, 0.0, -0.5, ]);
    const array6 = new Float32Array([-0.25, -1.0, -0.75, 0.5, 0.25, 0.5, 0.5, 1.0, 1.0, -0.75, -0.75, 0.75, 1.0, 1.0, -1.0, 0.0, 1.0, 0.5, 0.0, 0.5, -1.0, 0.25, -0.25, -0.25, 0.25, -0.25, 0.25, 1.0, -1.0, 0.0, 0.0, 0.5, -1.0, 0.25, -0.25, -0.75, 1.0, 0.0, 0.5, 1.0, 0.25, -1.0, 0.75, 0.0, -0.5, 0.0, 0.25, -0.25, -0.5, -0.5, 0.5, 0.25, -0.25, -0.25, 0.0, 0.0, 1.0, -0.25, -0.25, 0.75, -0.25, -0.25, 0.5, -1.0, 0.0, 0.0, 0.0, -0.75, 1.0, -1.0, 0.0, -1.0, -1.0, 0.0, 0.5, -1.0, -0.75, -0.5, 0.5, 1.0, 0.25, 0.0, 0.75, 0.5, -0.25, 0.5, -0.75, 0.5, 0.5, 0.0, -1.0, 1.0, 1.0, -0.75, 0.25, 0.0, 0.75, -0.25, -0.75, -0.25, ]);
    
    const array7 = new Float32Array([0.75, 0.75, -0.25, 0.75, 0.75, -0.5, 1.0, -0.75, -1.0, -0.75, 1.0, 0.25, -0.25, -0.25, 1.0, -1.0, -0.25, 1.0, -0.25, 0.25, 0.0, 1.0, -0.5, 0.75, -1.0, 0.25, -1.0, -0.25, 1.0, -1.0, 0.5, 1.0, 1.0, 0.25, -0.75, 0.75, 0.75, 0.0, 0.75, -1.0, 1.0, -0.25, -1.0, 0.5, -0.25, -0.5, -0.5, -0.25, -0.75, -0.25, 0.0, -0.5, 1.0, -0.75, 0.5, 1.0, 1.0, -0.75, -0.25, 0.75, -0.5, 0.25, -0.25, 0.75, 0.75, -0.5, 1.0, 1.0, -0.75, -1.0, -0.25, 0.5, 1.0, 0.0, -1.0, -0.75, 0.5, 0.25, 0.0, -1.0, 0.5, 0.25, 1.0, -1.0, 0.5, 0.5, 0.0, 1.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.25, 0.75, 1.0, -1.0, 0.25, -0.75, 0.75, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    buffer000.destroy()
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device20.pushErrorScope("internal");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device00.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array8 = new Float32Array([-1.0, 0.0, 0.25, -1.0, 0.5, -0.25, 0.5, 1.0, 0.5, 0.75, 0.5, -0.75, -0.75, 0.5, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, 0.25, -0.75, -1.0, -0.5, 1.0, -0.25, 0.5, -0.75, 0.0, -0.5, -0.5, 0.5, 0.0, -0.25, -0.25, -0.5, -1.0, 0.75, 0.25, -1.0, 0.75, -1.0, 0.5, 0.5, -0.25, 0.5, -0.5, -0.75, 0.5, 0.75, -1.0, 0.25, -0.25, -0.25, 0.25, -1.0, -0.75, 0.25, -0.25, -0.25, -0.5, 0.75, -1.0, -0.25, 0.0, -0.75, 0.0, 0.0, -0.25, -0.5, 0.75, 0.5, -1.0, 0.25, -1.0, 0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 0.0, 0.75, 0.75, -0.75, 0.75, -0.75, -0.25, -0.75, 0.5, -1.0, 1.0, 1.0, -0.5, 0.25, 0.25, 0.75, 0.5, 0.5, -1.0, ]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture200.destroy();
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const array9 = new Float32Array([0.0, -0.25, -0.5, 1.0, 0.75, 0.5, -1.0, 0.25, -0.5, -1.0, 0.25, 0.25, -0.25, 0.5, -1.0, 0.5, -1.0, 0.75, -0.75, -1.0, 1.0, 0.75, 1.0, -0.25, 0.75, 0.0, -0.75, -0.25, -1.0, -0.25, 0.25, -0.25, 1.0, -0.75, 0.5, 0.75, -0.5, 0.75, -1.0, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, -0.5, 0.5, 0.75, -0.5, 0.25, 0.25, -0.25, 0.25, -0.5, 0.25, -1.0, 0.5, -0.25, -0.5, -0.75, -0.75, 0.75, 0.75, 0.0, 0.5, 0.5, -0.5, -0.75, 1.0, -0.75, -1.0, 0.5, -1.0, 1.0, 0.0, 1.0, 0.0, 0.75, 0.5, -0.25, 1.0, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, -0.5, 0.75, -0.75, 0.75, 0.75, -0.25, -0.75, 0.25, 0.0, -0.5, 1.0, -0.25, 0.75, ]);
    query301.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const array10 = new Float32Array([-0.5, -0.5, -0.5, 1.0, 0.5, -1.0, -0.5, -0.5, -0.5, -0.25, 0.0, 0.25, 0.0, 1.0, -0.5, -0.75, 0.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.75, -0.5, -1.0, 1.0, 1.0, 0.75, 1.0, -0.5, -0.5, 0.75, 1.0, -1.0, -0.5, 0.5, 0.25, -1.0, 1.0, 0.25, 1.0, 0.5, -1.0, -1.0, -1.0, 0.0, 0.25, -1.0, -1.0, 0.0, 1.0, -0.25, 0.0, -1.0, -0.5, 1.0, 0.25, 0.75, 0.5, 0.0, 1.0, -0.5, 0.25, 0.5, -0.25, 0.5, 0.0, 0.25, 0.75, -0.5, 0.5, 0.75, -0.75, 0.5, -1.0, -0.25, -0.75, 0.25, -1.0, 0.25, 0.5, 1.0, -0.5, 0.75, -1.0, -0.25, -0.5, 0.25, 0.75, -1.0, 0.75, -0.75, 0.5, 1.0, 0.0, -1.0, -0.25, 0.25, -0.75, 0.5, ]);
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([0.5, 0.75, -1.0, 0.75, -1.0, -0.75, 0.0, -0.25, -0.75, 0.75, -1.0, -0.25, -0.5, 0.25, 0.5, 1.0, 0.25, -1.0, -1.0, 0.25, -0.75, -0.75, 1.0, 1.0, -0.5, -0.75, 1.0, 0.25, -0.5, -0.5, 0.25, 0.25, 0.0, 0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, -0.75, 1.0, -0.5, -0.25, -0.5, -0.25, 0.0, -0.25, 0.75, -0.25, -0.25, 0.75, 0.0, 1.0, -0.25, 0.75, -0.25, 0.0, -0.25, 0.0, 0.25, -0.25, 0.5, 1.0, 0.0, -0.5, 0.25, 0.25, 0.75, 0.25, 1.0, 1.0, -1.0, -0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 0.0, 0.0, -1.0, 0.75, -1.0, 0.25, 0.0, -1.0, 0.25, 0.75, -0.25, 0.5, -0.25, 1.0, 0.5, -0.5, 0.75, -0.5, -1.0, 0.0, ]);
    buffer300.destroy()
    
    render_bundle_encoder300.popDebugGroup();
    
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer301.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    query302.destroy()
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    query301.destroy()
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
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_buffer300 = command_encoder300.finish();
    query303.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query303.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    device30.pushErrorScope("out-of-memory");
    query303.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    query303.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    texture300.destroy();
    texture301.destroy();
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    texture302.destroy();
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder3010.executeBundles([])
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
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    query302.destroy()
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query300.destroy()
    device30.pushErrorScope("validation");
    render_pass_encoder3010.executeBundles([])
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query305.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query304.destroy()
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    buffer302.destroy()
    render_bundle_encoder301.popDebugGroup();
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query304.destroy()
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query302
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder301.insertDebugMarker("marker");
    query307.destroy()
    
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
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer303.destroy()
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const array12 = new Float32Array([0.5, -0.75, 0.75, -1.0, 0.5, 0.0, -0.75, -0.25, 0.0, -0.5, -0.25, 0.75, -0.5, 0.5, -0.25, 0.5, 0.75, 1.0, -0.75, -0.75, 1.0, 0.75, 0.75, -1.0, 0.25, -0.25, 0.25, -0.5, -1.0, -0.25, 0.25, 0.0, 1.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, -0.5, -0.5, 0.5, -1.0, 0.5, 0.5, -0.75, 0.0, 0.75, -1.0, -0.25, 0.0, 0.75, 1.0, 0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.25, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, -0.5, -0.25, -0.75, -0.5, -0.5, 0.5, -0.25, 0.75, 0.0, 0.25, 0.0, -0.25, 0.25, 0.75, 0.0, -0.75, 0.5, 0.25, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 0.5, 0.75, 0.0, 1.0, -0.25, -1.0, -0.75, 0.0, -0.25, -0.25, ]);
    device50.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer304, 0, array12, 0, array12.length);
    render_pass_encoder3030.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query303.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture304 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.insertDebugMarker("marker");
    query300.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    
    render_pass_encoder3020.setPipeline(render_pipeline300);
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
    query306.destroy()
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array12, 0, array12.length);
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    device30.queue.writeBuffer(buffer305, 0, array10, 0, array10.length);
    
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    
    
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    buffer304.destroy()
    render_pass_encoder3040.setStencilReference(1);
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query306
    });
    texture304.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder3010.setStencilReference(1);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    render_pass_encoder3040.setPipeline(render_pipeline301);
    
    const array13 = new Float32Array([-0.75, 0.0, -0.5, -0.75, -1.0, -0.25, -1.0, 0.75, 1.0, 0.25, -0.5, 0.75, -0.25, -0.25, -0.25, -0.5, 0.25, -0.5, 0.75, 0.5, -1.0, -0.25, 0.25, -0.25, -0.5, -1.0, 0.75, 0.75, -0.5, 0.5, -0.5, 0.25, -1.0, -0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -0.75, -0.25, 0.5, -0.25, 0.5, -1.0, 1.0, 0.75, -0.75, 0.5, 0.25, 0.25, -0.25, 0.5, -0.5, -0.75, -0.75, -0.5, -0.5, -1.0, -0.25, 0.75, 0.0, -0.25, -0.25, -1.0, -0.25, 0.25, -0.75, -0.5, -1.0, -0.5, 0.75, 0.25, -1.0, 0.5, 0.5, 0.0, -0.25, -0.25, -0.25, -0.5, 0.5, 0.25, -0.25, -0.25, 0.75, 0.75, -0.75, 0.0, -0.75, 0.75, 0.0, 0.5, -0.25, -1.0, 0.0, -0.75, -0.5, -0.75, -0.5, ]);
    render_pass_encoder3050.insertDebugMarker("marker");
    
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.setStencilReference(1);
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    render_pass_encoder3010.setStencilReference(1);
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query305.destroy()
    render_pass_encoder3030.executeBundles([])
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setPipeline(render_pipeline300);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3030.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer305, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    command_encoder306.clearBuffer(buffer305);
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query306
    });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer305, 0, array8, 0, array8.length);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query500.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    buffer308.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    query306.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3050.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    buffer309.destroy()
    render_pass_encoder3050.pushDebugGroup("group_marker");
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3030.setPipeline(render_pipeline301);
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    render_pass_encoder3040.setStencilReference(1);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    texture303.destroy();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_pass_encoder3060.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    render_pass_encoder3040.setStencilReference(1);
    render_bundle_encoder500.popDebugGroup();
    
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    render_pass_encoder3030.setStencilReference(1);
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3060.setStencilReference(1);
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer3010.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout305,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query500.destroy()
    device30.queue.writeBuffer(buffer305, 0, array10, 0, array10.length);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group302);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group303);
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3060.setPipeline(render_pipeline301);
    render_pass_encoder3040.popDebugGroup();
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    render_pass_encoder3060.setBindGroup(0, bind_group304);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group305);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group306);
}