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
    
    
    const array0 = new Float32Array([0.5, 0.0, -0.75, -0.25, -1.0, 0.25, -1.0, 0.0, -0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, 0.75, -0.75, 0.5, 0.75, 0.75, 0.0, -0.5, -0.75, -0.75, 0.5, 0.25, -0.5, -0.25, -1.0, 0.25, -1.0, -1.0, 0.5, 0.75, 0.0, 0.75, 1.0, -0.5, -0.25, 0.0, -1.0, 0.5, 1.0, 1.0, -0.75, -1.0, 0.5, -1.0, 0.0, 0.25, -0.75, 0.25, 0.0, -0.75, -0.25, -0.5, 0.0, 1.0, 0.25, 0.0, 1.0, -1.0, -0.75, 0.0, 1.0, 0.0, 0.0, -0.75, -0.75, -0.5, -1.0, 1.0, -0.75, -0.5, -0.5, -1.0, 1.0, 1.0, 0.0, 0.0, 0.25, -0.25, -0.75, -0.75, 0.0, -1.0, 0.0, -0.25, 0.75, -0.25, 1.0, 0.25, 0.5, -1.0, -0.5, -0.75, 0.5, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-1.0, 1.0, -0.5, 0.25, 0.25, 0.25, -1.0, -1.0, 0.25, 0.25, 0.0, 1.0, 1.0, 1.0, -0.25, 1.0, -0.5, 0.75, 0.75, 0.75, -1.0, 0.0, -0.75, 1.0, -0.25, 0.5, 0.25, 0.75, 1.0, -0.75, 1.0, 1.0, 0.25, 0.5, -1.0, -0.75, -0.5, -0.5, 0.25, 0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 1.0, 0.75, -0.25, -0.75, 0.0, 0.0, 0.5, 1.0, 0.0, 0.25, 1.0, -1.0, -0.5, 0.0, 0.75, -1.0, 0.25, 0.25, -1.0, -1.0, -0.5, 0.5, -0.75, -0.75, -0.5, 0.0, 1.0, -0.5, 0.25, 0.75, -0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.75, -0.25, 0.25, 0.75, 1.0, 0.75, 0.0, 0.5, 1.0, -0.75, 0.5, 0.75, 0.5, 0.25, 0.0, 1.0, 0.0, -0.75, ]);
    
    
    
    const array2 = new Float32Array([0.25, -0.75, 0.75, -0.25, -0.5, 1.0, -0.5, -0.75, 0.75, -1.0, 0.0, -0.75, 1.0, 0.0, -0.25, -0.5, 1.0, -0.25, 0.75, 0.5, 0.75, -0.5, -0.5, -0.25, 0.75, -0.5, -0.75, -0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.25, 0.0, -0.75, 0.0, 0.75, -0.5, 1.0, 1.0, -0.5, 0.75, -0.5, -0.25, -1.0, 0.25, -0.25, 1.0, -1.0, 0.0, 0.5, 0.75, 1.0, 0.25, 1.0, -0.75, 1.0, -1.0, -0.25, 0.5, 0.0, 1.0, 0.0, 0.5, 0.75, -0.5, 0.0, -1.0, -0.25, -1.0, 0.75, 0.75, -1.0, 0.5, 1.0, 0.75, 0.75, 0.0, 0.25, -1.0, 1.0, -1.0, -0.75, -1.0, 0.0, 0.75, 0.25, 1.0, 0.75, 1.0, 0.75, 1.0, -0.75, 0.5, -0.5, -0.25, -0.5, 1.0, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array3 = new Float32Array([-0.5, -0.5, 0.25, -0.5, 0.25, -0.5, 0.75, -0.75, 0.0, -0.75, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, 0.25, -0.25, -0.75, 0.5, 1.0, -0.75, -0.25, -0.25, 0.0, 1.0, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, -0.75, 1.0, 1.0, -1.0, -1.0, -0.75, 0.0, 0.0, -0.5, 0.75, -0.75, -1.0, 0.5, -0.25, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, 0.0, -0.25, 1.0, -0.5, -1.0, 0.75, -0.75, 0.0, 0.0, -0.25, 1.0, 0.75, -1.0, -0.25, 0.5, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.75, 0.75, 0.0, -0.5, 0.0, 0.5, -1.0, -0.75, 0.5, 0.75, 0.5, 0.25, -1.0, 0.25, -0.75, 0.75, -0.5, 0.25, 1.0, -1.0, -0.5, 0.5, ]);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device00.pushErrorScope("validation");
    
    const array4 = new Float32Array([-0.5, 0.0, 0.0, -0.25, 0.5, 0.5, -0.25, -1.0, -0.5, -0.75, 1.0, 0.0, -0.5, 1.0, 0.5, -0.25, -0.25, -0.25, -0.25, 0.0, 0.25, 0.0, 1.0, 0.0, 0.75, 0.0, 0.75, 0.0, 0.5, 0.0, -0.75, 0.5, 1.0, 0.25, -0.25, 0.5, 0.0, -0.25, 0.0, -1.0, 0.5, 0.25, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, 0.75, -0.5, 0.75, 0.0, -0.25, 0.0, 0.75, 0.0, 0.25, 0.0, 0.0, 1.0, -0.5, -0.5, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, 0.0, 0.5, -0.25, 0.25, -0.75, 0.25, -1.0, 0.25, -0.5, -1.0, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 0.5, 0.25, 0.5, -0.25, -0.25, -1.0, -0.5, 0.25, -0.75, 0.0, -0.25, -0.5, 1.0, 1.0, 0.0, 0.0, ]);
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array5 = new Float32Array([0.75, -1.0, -1.0, -1.0, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, 0.75, -0.25, 0.25, 0.75, -0.25, -0.25, 1.0, -0.25, -0.25, 0.25, 0.75, 0.75, 0.0, -1.0, 1.0, 0.75, 0.25, 1.0, -0.25, 1.0, -1.0, 1.0, -0.5, -0.75, -0.75, 0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 1.0, 0.25, 0.0, -0.25, 0.75, 0.25, -1.0, -0.25, -0.75, -0.75, -0.5, -0.5, 0.0, 0.5, 0.75, 0.75, 0.5, -1.0, -0.5, 0.25, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 0.0, 0.0, 0.75, 0.25, 0.25, -0.5, 1.0, -0.5, -1.0, 1.0, -0.5, 0.25, -0.5, 0.5, -0.5, 0.0, -0.25, -0.25, -0.75, -0.75, -0.5, 0.5, -1.0, -0.25, 0.25, 0.25, -1.0, 0.25, ]);
    const array6 = new Float32Array([0.75, 0.0, 0.5, 0.5, 1.0, -0.25, 0.5, 0.75, 0.0, 0.0, 0.25, 0.5, 0.0, 0.75, -0.5, 0.75, -1.0, -1.0, 0.75, -0.5, -0.5, 0.75, -0.25, -1.0, 0.5, -0.75, 0.25, 0.5, -0.75, 0.25, -0.75, 0.25, 0.75, -0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -0.25, -0.5, 0.0, -1.0, 0.5, -0.75, -1.0, -1.0, -1.0, 0.25, 0.75, 0.5, -1.0, -1.0, 0.75, 0.5, -1.0, -0.25, -0.75, 0.75, -1.0, -1.0, 0.5, -0.75, 0.75, -1.0, 1.0, -1.0, -0.25, -0.75, -1.0, 0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -0.25, -0.25, 0.25, 0.0, 0.0, 0.75, 0.0, 0.0, -0.5, 0.25, -0.25, -0.25, -1.0, 0.0, -0.5, 1.0, -0.25, 0.25, -1.0, -1.0, 0.25, -0.25, 0.25, 0.25, ]);
    const array7 = new Float32Array([1.0, -1.0, -0.25, -0.75, 0.0, 1.0, 1.0, 0.75, 0.5, -0.75, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.25, -0.5, -0.5, -0.5, -0.5, 1.0, 0.0, -1.0, 0.25, -0.5, -0.75, -0.75, -0.25, -0.5, -0.75, 0.25, -1.0, 0.5, -0.25, -0.25, -1.0, -0.5, 0.5, -0.5, 0.5, 0.75, -0.75, 0.25, 0.25, 0.25, 0.75, 0.75, -0.25, -0.25, 1.0, -0.25, 0.25, 0.5, -0.5, -1.0, -0.25, 0.0, 0.0, -1.0, -0.75, -0.75, 0.25, 0.0, 1.0, 0.75, -0.5, -0.5, 0.25, -1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 0.5, 0.25, 0.25, 1.0, -1.0, 0.75, 0.5, 0.75, -0.25, -0.75, 0.5, -1.0, 0.25, 0.25, -0.25, 0.5, -0.25, -1.0, -0.25, 1.0, -0.5, -0.75, -0.5, 1.0, 1.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device30.pushErrorScope("internal");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    query201.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([-0.75, -0.5, -0.75, 0.5, -0.25, 0.75, -0.25, 0.25, 0.75, 0.75, 0.0, -1.0, -0.25, 0.0, 1.0, -1.0, 0.5, 0.0, 1.0, 0.0, 0.5, -0.25, 0.0, -0.25, -0.5, -1.0, 0.0, 0.5, -0.25, 0.75, 1.0, 0.5, -1.0, 0.0, 1.0, -0.5, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, -0.5, 0.5, 0.5, -0.75, -0.5, -0.75, 0.75, 0.75, -1.0, -1.0, -0.5, -0.75, 0.25, 0.5, 0.75, -0.5, -1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 0.5, 0.0, 0.0, 0.25, 0.5, 0.75, 0.25, 0.75, 0.75, -0.5, -0.5, -1.0, 1.0, -0.5, -0.5, -0.75, -0.75, 0.0, 0.5, -0.5, 1.0, 1.0, -0.25, 0.5, 0.75, -1.0, -1.0, -0.75, 0.5, -0.75, 0.75, -0.75, 0.0, 0.75, 0.0, -0.5, ]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("internal");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    device40.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture200.destroy();
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    render_bundle_encoder300.popDebugGroup();
    const array9 = new Float32Array([0.5, -1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -0.25, 0.75, 0.0, 0.25, 0.75, 0.25, 0.5, 0.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.5, -0.25, 0.5, -1.0, 0.5, 0.25, -0.25, 1.0, 0.75, -0.25, 0.75, -1.0, 0.25, 1.0, 1.0, -0.75, -0.25, 0.25, -1.0, -0.75, 0.0, 0.75, 0.75, -1.0, -0.75, -1.0, 0.5, 0.5, 0.25, 0.25, 0.75, 1.0, 0.25, -1.0, -0.5, 0.75, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, -0.25, 0.75, -0.25, 0.75, 0.0, 1.0, 1.0, 0.25, -0.75, 0.25, 0.25, -0.25, 0.25, -1.0, 1.0, 0.25, 0.75, -0.75, 1.0, -0.5, 1.0, -0.25, -0.5, 1.0, -0.75, -0.5, 0.25, 0.25, -0.5, -0.5, -0.75, -0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 0.5, ]);
    render_bundle_encoder200.popDebugGroup();
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer300.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device30.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    texture201.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    buffer200.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer201.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    texture101.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
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
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    
    
    
    query204.destroy()
    
    
    device10.pushErrorScope("validation");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.popDebugGroup();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query200.destroy()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const array10 = new Float32Array([0.5, 0.75, 1.0, -0.75, 0.75, 0.5, 0.5, -0.25, 0.75, -0.75, -0.5, 0.0, -0.25, 0.25, -0.5, 1.0, -0.25, -1.0, -1.0, -0.25, 1.0, -1.0, -1.0, -0.75, 0.75, 0.75, 0.5, -0.25, 0.0, -0.25, -0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 1.0, -0.5, -1.0, -0.5, -1.0, 0.5, 1.0, 1.0, 0.75, 0.25, -1.0, 0.0, -0.25, 0.75, 0.5, 0.5, 0.75, -0.5, -0.75, 0.5, 0.25, 0.5, -0.5, 1.0, 1.0, -0.75, -1.0, 0.75, -0.5, -0.25, 0.0, 0.0, -1.0, -0.75, 0.75, -0.75, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -1.0, 0.75, 0.75, -1.0, -1.0, 1.0, -0.5, 0.0, -0.5, -1.0, 0.5, -1.0, 0.75, 0.75, 0.25, -0.25, 0.5, -0.25, -0.25, -0.25, -0.25, -0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    render_pass_encoder1000.setStencilReference(1);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    query100.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    query401.destroy()
    query400.destroy()
    
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1000.executeBundles([])
    
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    buffer402.destroy()
    texture100.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query204.destroy()
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
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
    
    render_bundle_encoder203.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    render_pass_encoder1010.endOcclusionQuery()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query202.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    query201.destroy()
    
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder4000.setStencilReference(1);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer401.destroy()
    
    
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    buffer400.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query400.destroy()
    render_bundle_encoder202.popDebugGroup();
    buffer101.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("validation");
    query401.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
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
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder4000.setPipeline(render_pipeline400);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder203.insertDebugMarker("marker");
    render_bundle_encoder203.popDebugGroup();
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query402
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.5, -0.25, 0.75, -0.5, 0.75, -1.0, -0.25, 0.75, 1.0, -0.75, 0.75, 0.25, 1.0, -1.0, 0.75, 0.75, 0.5, -1.0, -0.75, -0.25, -0.25, 0.75, 1.0, 1.0, 1.0, -0.75, -0.25, -0.5, -0.5, -0.5, 0.75, 0.5, 0.25, 0.0, 0.0, 0.75, -1.0, 1.0, 0.0, 0.25, 1.0, 0.25, 1.0, 1.0, 1.0, 0.5, -0.25, 1.0, 0.25, 0.75, -1.0, 0.5, -1.0, 0.75, 0.75, -1.0, -0.75, -0.25, 0.0, -0.5, -1.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.75, -1.0, 0.5, 0.75, 0.0, 0.5, 0.5, -0.75, 0.75, 1.0, 0.0, 0.75, -0.75, 1.0, 1.0, 0.75, 0.75, -1.0, 0.0, -0.75, -1.0, 0.0, 0.25, -1.0, 0.0, -0.5, 0.5, 0.75, 0.75, -1.0, -0.75, -1.0, 0.25, 0.0, ]);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    query403.destroy()
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    render_pass_encoder1010.endOcclusionQuery()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const command_buffer101 = command_encoder101.finish();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1000.setStencilReference(1);
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query403
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    query205.destroy()
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query206.destroy()
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.popDebugGroup();
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    device20.queue.submit([]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query100.destroy()
    
    
    
    device40.queue.writeTexture({ texture: texture402 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer101, ]);
    
    
    render_pass_encoder4001.beginOcclusionQuery(0)
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query403
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query100.destroy()
    
    render_pass_encoder4020.setPipeline(render_pipeline402);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture403 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture203.destroy();
    query501.destroy()
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
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
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group401);
    render_pass_encoder4010.setPipeline(render_pipeline402);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.setStencilReference(1);
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_bundle_encoder402.setPipeline(render_pipeline402);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture400.destroy();
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture402 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device40.queue.writeBuffer(buffer403, 0, array8, 0, array8.length);
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
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder4020.setStencilReference(1);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    texture402.destroy();
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_pass_encoder4001.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    buffer403.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    texture102.destroy();
    query403.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    texture403.destroy();
    command_encoder402.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer405
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder4001.endOcclusionQuery()
    
    query207.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    render_pass_encoder4020.setVertexBuffer(0, buffer404);
    render_pass_encoder1000.popDebugGroup();
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    render_pass_encoder4000.setVertexBuffer(0, buffer401);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4020.setIndexBuffer(buffer406, "uint16");
    device10.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer403, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder1000.setPipeline(render_pipeline100);
    device20.queue.submit([]);
    render_pass_encoder4020.end();
    render_pass_encoder4020.draw(3);
    const command_buffer200 = command_encoder200.finish();
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group403);
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.draw(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder1010.end();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1000.setVertexBuffer(0, buffer105);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder4001.setPipeline(render_pipeline400);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder4000.end();
    render_pass_encoder1000.end();
    render_pass_encoder4000.end();
    render_pass_encoder1010.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    render_pass_encoder4010.drawIndirect(buffer405, 0);
    render_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([]);
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group404);
    render_pass_encoder4000.end();
    render_pass_encoder4001.setVertexBuffer(0, buffer403);
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    render_pass_encoder4001.drawIndirect(buffer400, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4001.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder4020.end();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    command_encoder400.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1010.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4010.draw(3);
}