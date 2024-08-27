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
    
    
    const array0 = new Float32Array([0.0, 1.0, 0.0, 0.25, 0.25, 0.25, -0.75, 0.0, 0.0, -0.25, -0.5, -0.25, 0.75, -0.5, 0.25, -0.75, -0.5, 0.75, -0.25, -0.5, -1.0, -0.75, -0.25, 0.25, 0.0, -1.0, 0.5, 1.0, -0.25, 0.5, 0.5, -0.25, -1.0, -0.25, -0.75, -0.75, 0.25, 1.0, -0.5, 0.25, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, -1.0, -0.75, 0.25, 1.0, -0.25, 0.25, 0.5, -0.75, -0.75, 0.5, 0.25, -0.75, 1.0, -0.75, 0.0, -0.5, -0.5, -1.0, -0.75, -0.5, 0.0, 0.75, -0.25, -0.25, 0.25, -0.5, -0.5, -0.5, 0.5, -0.25, 1.0, -0.5, -1.0, 0.0, 0.75, -0.5, -0.5, -1.0, -0.5, 0.75, -0.25, -0.25, 1.0, 0.5, -1.0, -1.0, 0.5, 0.5, 1.0, 0.5, 0.25, 0.75, 1.0, 0.25, ]);
    const array1 = new Float32Array([1.0, -0.5, 0.75, -0.75, 0.25, 0.75, -0.75, -0.25, 0.25, -0.75, 0.75, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 0.75, -1.0, -0.25, 1.0, 0.25, 0.0, 0.0, 0.75, 1.0, 0.25, 0.5, 0.5, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, 1.0, -0.25, 0.25, 0.0, -0.75, 0.0, -1.0, 1.0, 0.5, 0.25, 0.25, 0.5, -0.25, -0.75, 0.0, 0.5, 0.25, -0.75, 0.75, -0.25, 0.5, -0.25, 0.25, 0.25, 0.25, 0.75, -0.75, -0.5, 0.75, 0.25, 0.25, 0.5, -0.75, 0.75, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, 1.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.25, -1.0, 0.25, -0.75, 0.5, 1.0, 0.25, -1.0, 0.5, 1.0, 0.5, -1.0, 0.25, 1.0, 0.75, ]);
    const array2 = new Float32Array([0.5, -1.0, 0.25, -1.0, 0.75, 1.0, -1.0, -0.75, 0.5, -0.75, 0.5, 0.75, -0.25, 0.0, -0.75, 1.0, -0.5, -1.0, 0.5, 0.0, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, -1.0, -0.5, -1.0, -0.75, 1.0, -0.5, 1.0, 0.75, -0.5, 0.0, 0.75, 1.0, -0.75, 0.25, -0.25, -1.0, -0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 1.0, -0.25, 0.25, -0.5, -0.25, 0.25, 0.25, -0.75, -1.0, 1.0, 0.5, -0.25, -0.5, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, 1.0, -0.5, -0.25, -1.0, -0.25, -0.5, -0.5, 0.25, -0.75, 0.0, -0.25, 1.0, 0.0, 1.0, 1.0, -1.0, 1.0, 0.0, 0.75, 0.75, -0.75, -0.25, 0.25, -0.5, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, -0.25, 1.0, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array3 = new Float32Array([-1.0, -0.75, 0.5, -0.25, -0.5, -0.25, 0.75, 1.0, 0.5, 1.0, 0.0, -1.0, 1.0, -0.75, 0.5, -0.25, -0.5, 1.0, 0.25, -1.0, -0.5, 0.0, -0.75, -0.5, 0.75, -1.0, -0.75, -1.0, -0.25, 0.75, 0.75, -0.5, -0.25, 0.25, 0.25, -0.5, 0.5, 0.0, 0.75, 0.0, 0.0, -0.75, 1.0, 1.0, -0.25, 0.0, -0.5, 0.75, 1.0, -0.5, 0.0, -0.5, -0.5, 0.75, 0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.0, 0.0, -1.0, 0.0, 0.75, -0.75, 0.5, -0.5, 0.0, -0.5, -0.5, 1.0, 0.0, -1.0, 0.75, -0.5, 0.0, 1.0, 1.0, -0.75, -0.5, 0.75, 0.0, 0.25, -0.75, 0.25, 0.25, -0.25, -0.5, 0.5, 1.0, -0.5, 0.5, 0.75, 0.75, -0.75, 0.75, -0.5, 0.75, 0.0, ]);
    const array4 = new Float32Array([0.25, -1.0, -0.25, 1.0, -0.75, -0.75, 0.75, 1.0, 0.25, -0.75, -0.75, 0.75, 1.0, 0.75, 0.0, -0.25, -0.25, -1.0, 0.0, 0.0, 1.0, -0.25, 0.0, 1.0, 0.25, 1.0, 0.0, -0.75, -0.25, 0.75, -1.0, 0.75, -0.5, -0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 0.25, -0.25, -0.5, 1.0, 0.5, 0.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.25, 0.25, 0.0, 1.0, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, 0.0, 0.25, 0.0, -0.5, -0.25, 1.0, -1.0, 0.25, -1.0, 0.25, -0.25, 0.75, -0.25, -0.5, 0.0, 0.5, 0.0, -0.75, -0.25, -1.0, 0.0, -0.75, 1.0, -1.0, -0.25, 0.5, 0.5, 0.5, 0.0, 0.5, -1.0, -0.75, 0.25, -0.25, 0.25, 0.25, -0.25, 0.25, -1.0, 0.0, ]);
    
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array5 = new Float32Array([0.5, -0.5, 0.0, 1.0, 0.5, -0.25, -0.75, 0.0, 0.25, -0.5, -0.25, 0.75, -0.75, 0.75, -1.0, -0.25, 0.5, -0.75, 1.0, -0.5, 0.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.0, -1.0, -0.5, 0.75, 0.25, 0.5, -1.0, -1.0, 0.25, 0.25, 0.25, 1.0, 0.25, -0.25, 0.75, 0.5, 0.0, -0.75, 0.25, -1.0, 0.75, 0.75, -0.75, 0.75, 0.5, -0.25, -1.0, 0.25, 0.75, 0.5, 0.5, 1.0, -1.0, 1.0, -0.75, -0.75, 0.0, 0.0, -0.75, 0.75, 0.25, -1.0, -0.75, 1.0, 1.0, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, 0.5, -0.5, 0.5, 0.0, -0.75, -0.5, 0.0, -0.75, 0.75, 0.75, -0.5, -0.25, -0.5, 0.0, 1.0, 0.25, 1.0, -0.25, 0.25, 0.5, 0.0, 0.0, -0.5, ]);
    
    buffer300.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture000.destroy();
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 0.0, -0.5, 0.5, 0.75, -0.5, -0.5, 0.0, -1.0, -1.0, -0.5, 0.5, -0.75, 0.5, 0.5, 0.5, -0.75, 0.75, 0.75, 0.0, 0.5, -1.0, 0.75, -0.5, -0.25, -1.0, 0.75, -0.25, 1.0, 0.0, 0.5, 0.0, 0.75, 1.0, 0.25, 0.25, 0.25, -0.75, 0.5, 0.0, 0.25, 0.25, -0.75, 0.5, -0.75, 0.5, 1.0, -0.5, 1.0, 0.25, 0.5, -0.75, -0.25, 0.0, -1.0, -0.75, 0.75, 0.5, 0.0, 0.5, -0.75, 1.0, -0.75, 0.75, -0.75, 0.75, 0.0, 0.25, 0.75, -0.5, 0.75, 0.75, 0.0, -1.0, -1.0, -0.75, -0.5, -0.5, -0.75, 0.75, 0.25, -1.0, 0.0, -0.25, 0.25, -0.5, 0.75, 0.0, 0.0, -1.0, -0.25, 0.25, 0.0, 0.25, -1.0, ]);
    
    const command_buffer300 = command_encoder300.finish();
    
    const texture301 = device30.createTexture({
        label: "texture301",
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
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device30.pushErrorScope("validation");
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array7 = new Float32Array([1.0, -0.75, 0.75, 0.25, 0.5, 1.0, -0.5, 1.0, -0.5, 0.25, 0.5, 0.5, 0.75, 0.5, -1.0, -0.75, 0.25, 0.25, -0.25, 0.0, 0.5, 0.75, 0.75, -1.0, -1.0, -1.0, 0.5, 0.25, 1.0, 0.75, -0.75, 1.0, 0.0, 0.0, -0.5, -0.5, 1.0, -0.75, 0.75, -0.25, 1.0, 0.5, 1.0, 0.25, -0.75, 1.0, -0.75, -0.25, -0.75, 0.25, 1.0, 0.25, -0.75, 0.5, 0.0, 0.5, -0.75, -0.25, 0.0, -0.5, -0.25, 0.5, -0.5, -0.5, 0.0, 0.75, -1.0, 1.0, -0.25, -0.25, 0.75, 1.0, -1.0, -0.5, 1.0, -1.0, 0.25, 0.0, -0.75, -0.75, -0.25, 0.0, 0.75, 0.0, 0.75, 0.75, 0.25, 1.0, 0.25, 0.0, 0.25, 0.25, 0.0, 1.0, 0.75, -0.75, 0.75, 0.0, 0.0, 0.25, ]);
    
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_buffer200 = command_encoder200.finish();
    device20.pushErrorScope("validation");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    render_pass_encoder3010.beginOcclusionQuery(0)
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const array8 = new Float32Array([0.5, 1.0, -1.0, -0.75, 0.25, -0.75, 0.5, 0.75, -0.5, 1.0, -0.25, 0.0, 0.75, -0.5, -1.0, 0.0, 0.25, 0.75, 0.25, -0.75, 0.75, 1.0, -0.25, 0.5, 0.0, 0.0, -1.0, -0.5, 0.75, -0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.5, -0.25, -0.25, -0.25, 0.5, 0.0, -0.25, 0.75, 1.0, 0.25, 0.25, 1.0, 0.0, -0.5, 1.0, -0.25, 0.5, 0.25, -0.75, -0.5, -0.25, 0.5, 0.0, 0.0, -0.5, -0.75, -0.5, 0.75, 0.5, 0.75, 0.5, 0.0, 0.75, -0.5, 0.75, 1.0, 0.5, 0.25, 0.75, 0.25, 0.25, 0.5, 1.0, 0.5, 0.0, 0.5, -0.25, -0.5, 1.0, 0.0, -0.75, -0.25, 0.0, 0.0, 0.75, -0.25, 1.0, -1.0, 0.5, 0.25, 1.0, 1.0, 1.0, -0.75, -1.0, ]);
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer201.destroy()
    command_encoder202.copyBufferToBuffer(
        buffer200,
        0,
        buffer202,
        0,
        400
    );
    
    
    
    render_pass_encoder3010.executeBundles([])
    buffer200.destroy()
    command_encoder202.clearBuffer(buffer202);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    device30.queue.submit([command_buffer300, ]);
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    texture200.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    command_encoder202.popDebugGroup()
    query301.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3010.setStencilReference(1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer302.destroy()
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3010.endOcclusionQuery()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_pass_encoder3010.beginOcclusionQuery(1)
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    texture302.destroy();
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3010.endOcclusionQuery()
    
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array9 = new Float32Array([0.25, 0.5, -0.75, -0.25, 1.0, -1.0, 1.0, -0.25, 0.0, -0.75, -0.75, 0.0, 0.0, 0.5, 0.25, -0.25, -1.0, 0.5, 0.25, 0.75, 0.0, 0.75, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.25, -0.5, -1.0, 1.0, 0.0, 0.0, -1.0, 0.25, -0.75, -0.5, -0.5, -0.75, 0.25, 1.0, 1.0, 0.5, -0.75, -0.25, -1.0, -0.5, 0.75, 0.5, 0.25, 0.0, 0.25, -1.0, 0.0, -1.0, -1.0, 0.75, -0.5, -0.25, -0.5, 0.0, -0.25, 0.25, -1.0, 0.0, 0.25, -1.0, -0.25, 0.0, 0.75, 0.75, -0.25, 0.5, -1.0, -1.0, 0.0, 0.0, -1.0, -0.5, -0.5, -0.5, 0.25, 1.0, -0.5, -0.25, -1.0, 0.5, 0.5, -0.75, 0.25, -0.5, 0.75, 1.0, 0.0, -1.0, -0.5, 0.75, 0.25, -1.0, ]);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
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
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2030.setPipeline(compute_pipeline202);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder3010.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer206, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer206, 0);
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
    compute_pass_encoder3020.popDebugGroup()
    const array10 = new Float32Array([1.0, 1.0, 1.0, 0.0, 0.25, -0.25, 0.25, -0.75, 0.0, 0.0, 0.75, 0.25, 0.75, 0.75, 0.25, 1.0, -1.0, -0.25, 0.75, -0.75, 0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 1.0, -0.5, -1.0, -0.25, -0.75, 0.25, -0.25, 1.0, -0.5, 0.75, -1.0, -0.25, 0.0, 1.0, 1.0, 1.0, -0.5, 1.0, 0.5, -0.25, -0.5, 0.5, -0.75, 0.25, 0.75, -1.0, -0.75, -0.75, -0.75, 0.75, 0.25, 0.75, -0.25, 0.5, 1.0, 0.75, -0.5, -0.5, 1.0, -0.5, 0.25, -0.25, -0.75, -0.25, 1.0, -0.25, 1.0, 0.75, 0.0, 0.5, -0.5, 0.0, 1.0, 0.75, 0.75, 0.25, 0.0, -0.25, 0.75, -0.25, -1.0, -0.5, 0.75, 1.0, -0.75, 0.75, 0.25, -0.5, -1.0, 0.25, 0.0, 1.0, -1.0, -0.25, ]);
    
    render_pass_encoder3010.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    command_encoder202.insertDebugMarker("mymarker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer305.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer206, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder204.clearBuffer(buffer206);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.writeBuffer(buffer203, 0, array9, 0, array9.length);
    
    device20.queue.writeBuffer(buffer206, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    query303.destroy()
    buffer203.destroy()
    
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.popDebugGroup();
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder204.clearBuffer(buffer202);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder202.clearBuffer(buffer202);
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
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    command_encoder204.pushDebugGroup("mygroupmarker")
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer304.destroy()
    compute_pass_encoder2010.popDebugGroup()
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer206, 0, array5, 0, array5.length);
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2020.setPipeline(compute_pipeline2012);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
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
    query300.destroy()
    query300.destroy()
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    compute_pass_encoder2050.setPipeline(compute_pipeline2014);
    buffer301.destroy()
    command_encoder206.insertDebugMarker("mymarker");
    
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
        layout: compute_pipeline2012.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    query300.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    query300.destroy()
    query303.destroy()
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder2040.setPipeline(compute_pipeline209);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    device30.queue.writeTexture({ texture: texture303 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array11 = new Float32Array([1.0, -0.25, 1.0, 0.75, 0.25, -0.75, 0.0, -0.25, 1.0, 0.0, -0.5, -0.5, 0.0, -0.75, -1.0, -1.0, 1.0, -0.75, -0.25, -1.0, -1.0, 0.5, 1.0, -1.0, -0.5, -1.0, -1.0, -0.5, 0.75, 0.75, -1.0, 0.0, 0.25, 0.0, 0.25, 0.0, -0.5, 0.25, 0.0, -0.75, 0.25, -1.0, 0.25, 0.75, -0.5, 0.25, -0.25, 0.25, -0.5, 0.0, 0.25, 1.0, -1.0, 0.0, -0.5, -0.75, -0.25, 0.5, 0.25, 1.0, 0.0, -0.25, -1.0, 1.0, 0.5, 1.0, -0.5, 0.5, -0.75, 0.75, -1.0, 0.0, -0.5, 1.0, 1.0, 0.25, 0.5, -0.5, -1.0, 0.25, 0.75, 0.75, -0.75, 1.0, -0.25, 0.75, 0.5, -0.25, 0.5, 0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 0.25, -0.5, -0.25, 0.75, -1.0, ]);
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    query301.destroy()
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    buffer306.destroy()
    query303.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer307.destroy()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    compute_pass_encoder2050.popDebugGroup()
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_pass_encoder3010.popDebugGroup();
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2013, 0);
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    command_encoder206.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    buffer206.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    texture300.destroy();
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    compute_pass_encoder3020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer2013, 0, array0, 0, array0.length);
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    device30.queue.writeTexture({ texture: texture303 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout204]
    });
    command_encoder206.insertDebugMarker("mymarker");
    
    buffer204.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer202, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer2013, 0, array5, 0, array5.length);
    buffer205.destroy()
    device20.queue.writeBuffer(buffer2013, 0, array4, 0, array4.length);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    texture304.destroy();
    render_pass_encoder3030.setStencilReference(1);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer2013, 0, array4, 0, array4.length);
    
    
    render_pass_encoder3030.executeBundles([])
    
    
    render_pass_encoder3040.setPipeline(render_pipeline303);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer2013, 0, array10, 0, array10.length);
    render_pass_encoder3030.setStencilReference(1);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    query304.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder3030.setPipeline(render_pipeline302);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline2014.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group205);
    compute_pass_encoder2010.end();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline209.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group206);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2050.end();
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    compute_pass_encoder3020.popDebugGroup()
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2021, 0);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group304);
    command_encoder206.popDebugGroup()
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    const command_buffer206 = command_encoder206.finish();
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3015, 0);
    const command_buffer205 = command_encoder205.finish();
    command_encoder201.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2040.end();
    compute_pass_encoder2020.end();
    const command_buffer201 = command_encoder201.finish();
    command_encoder204.popDebugGroup()
    compute_pass_encoder2030.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    compute_pass_encoder3020.end();
    command_encoder202.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    const command_buffer204 = command_encoder204.finish();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer204, ]);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
}