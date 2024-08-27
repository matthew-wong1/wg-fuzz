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
    
    const array0 = new Float32Array([0.0, 0.0, -0.5, -0.5, -1.0, 0.0, 0.5, 1.0, -1.0, -1.0, 0.5, -0.5, 0.0, -0.75, 0.25, 1.0, -1.0, 0.25, -0.5, -1.0, -0.5, 1.0, 1.0, -0.25, -0.25, -1.0, -0.75, -0.25, 0.75, 1.0, -1.0, 0.0, -0.25, -0.5, 0.0, -0.5, -0.25, 0.5, -0.75, -0.25, 0.75, -0.75, -0.25, -0.5, 1.0, 0.0, -0.25, 0.0, 1.0, 1.0, -0.25, -0.25, 1.0, 0.75, 0.0, 0.25, -0.75, 1.0, -0.75, -0.5, 1.0, -0.25, -0.5, -0.25, 0.5, 0.5, 1.0, 0.75, -0.25, -0.25, -0.25, -1.0, -1.0, 0.5, 1.0, 0.5, 1.0, 0.25, 0.0, -1.0, -0.75, 0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -1.0, 0.5, -0.5, 0.25, 0.0, 0.5, -0.5, -0.25, -0.5, -0.5, 0.75, 1.0, 0.0, ]);
    
    
    
    const array1 = new Float32Array([0.0, 0.0, 0.0, -0.5, -0.25, 1.0, 0.75, 1.0, -0.5, 0.0, -1.0, 0.25, 0.25, 0.25, 0.75, 1.0, 0.25, -0.75, 0.75, -0.75, 0.75, 0.0, 1.0, 0.5, -0.75, 0.0, -1.0, -0.25, 0.5, 0.5, 1.0, 0.0, 1.0, -0.25, 0.75, 1.0, -0.5, -0.5, 0.0, -0.75, -0.75, -0.5, -0.25, 1.0, -0.25, -0.75, 1.0, -0.5, 0.25, 0.0, 0.75, 1.0, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, 0.0, -0.75, -0.25, -0.25, -0.5, 0.5, 0.0, 0.5, -0.75, -1.0, -0.25, 0.0, -0.25, 0.75, 0.5, -0.75, -0.75, -0.5, 0.0, -1.0, -0.75, 1.0, 0.75, -0.5, 0.25, 0.75, 0.75, 0.0, -1.0, -0.5, -0.5, -0.5, 0.0, -0.25, 0.25, -0.25, 0.5, 0.25, -0.5, 0.25, -0.75, 0.5, ]);
    
    const array2 = new Float32Array([-0.25, 0.5, 1.0, -0.25, 0.75, -0.75, 0.0, -1.0, 1.0, -0.5, -0.75, 0.0, 0.75, 0.0, 0.25, -1.0, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, 0.0, 0.75, -0.5, 0.25, -1.0, -0.25, -0.75, -0.75, -0.25, 0.25, 0.75, 0.75, 0.0, 1.0, -0.5, -0.25, -0.25, 0.0, 0.25, 0.0, 0.0, 0.5, 0.25, -0.25, 0.5, 0.75, -0.25, -1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 0.75, -1.0, 0.25, 0.5, -1.0, -0.5, -0.25, -0.5, -0.25, 0.75, 0.0, -0.5, 0.0, 0.25, 0.5, 1.0, -0.5, 0.0, 0.5, 0.5, 0.75, -1.0, -0.25, -0.75, 0.25, -0.25, -0.5, -0.75, 0.0, -1.0, 0.75, 0.25, -1.0, 0.0, 0.0, 0.25, -1.0, -1.0, 1.0, -1.0, 0.25, 1.0, 0.5, 0.75, 0.25, ]);
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array3 = new Float32Array([0.5, -0.5, 0.0, 0.25, 1.0, 0.75, 0.25, 0.25, -1.0, 0.25, -0.5, -0.25, -0.5, -1.0, 1.0, 1.0, 0.0, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, 0.0, 0.25, 0.5, -1.0, -0.75, 0.75, 0.25, -0.5, 0.25, 0.75, 0.5, 0.5, -0.25, 0.5, 0.0, -1.0, -0.5, -1.0, 0.25, -0.5, -0.5, -0.5, -0.25, 0.5, 0.5, -1.0, 0.75, 0.25, -1.0, 0.5, 0.75, -0.25, 0.0, 0.5, 1.0, -0.25, 0.0, -0.5, 1.0, -0.5, -1.0, -1.0, 1.0, 0.5, 0.5, -1.0, -0.75, 0.75, 0.0, 1.0, -1.0, 1.0, 1.0, -0.25, -1.0, 0.5, 1.0, -0.5, -0.25, -1.0, 0.0, -0.5, -0.25, -0.5, 0.75, 0.25, 0.5, -1.0, 0.0, 0.25, 0.0, 0.75, -0.25, 1.0, -0.25, 0.5, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    buffer000.destroy()
    device10.destroy();
    device00.destroy();
    
    const array4 = new Float32Array([-0.75, 0.25, 0.75, 0.0, 0.0, 0.5, 0.5, 0.75, -0.5, -0.25, -0.75, -0.5, -1.0, -1.0, -0.75, -0.5, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, -1.0, -1.0, -0.25, -0.5, 1.0, -0.75, -1.0, 0.25, -0.75, -0.75, 1.0, -0.75, -0.5, -0.5, 0.75, -0.25, -0.5, 0.75, -0.75, 0.25, -1.0, -0.5, 0.5, 0.25, -0.5, -0.5, 1.0, 1.0, 0.0, -1.0, -0.25, 1.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.0, -0.75, 0.25, -0.25, -0.75, -0.5, -0.25, -0.75, -0.75, 0.5, -0.5, 1.0, 1.0, 0.0, 1.0, 0.25, -0.25, -0.75, 1.0, 1.0, -0.25, 0.25, 0.25, 0.25, -0.5, 0.5, -1.0, 0.25, -0.75, 0.25, -0.25, 0.75, 1.0, 0.0, -0.5, -0.25, -0.25, -0.25, 1.0, -0.25, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const array5 = new Float32Array([0.0, 0.0, -1.0, 0.25, 1.0, 1.0, 0.75, 0.25, -0.75, 1.0, 0.0, 0.5, -0.5, -0.75, 0.0, 0.75, -0.25, 1.0, 0.0, -0.25, 0.75, -0.25, 0.75, 0.75, -0.25, -1.0, 0.75, -0.5, -0.75, -1.0, -0.5, 0.5, 1.0, 0.5, 0.75, -0.75, -1.0, 0.75, 0.5, -0.5, -0.25, 1.0, 0.75, 0.25, -0.5, 0.0, 0.25, 1.0, 0.0, -0.25, 1.0, -0.5, 0.0, 1.0, -0.25, -0.75, 0.75, -0.25, -0.5, -0.75, 0.5, 0.5, -0.75, 0.5, 0.75, 0.5, -0.25, -0.75, 0.75, 0.5, 0.5, 0.75, 0.5, 0.75, 0.25, -0.25, -0.25, -1.0, 0.0, 0.0, 0.25, -0.5, 1.0, -0.25, -0.5, -0.5, 0.75, -0.75, 0.5, 0.5, -0.75, 0.75, 0.25, 0.0, -1.0, 0.25, 1.0, 1.0, 0.25, -0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    texture200.destroy();
    
    
    device00.destroy();
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    device20.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    texture300.destroy();
    buffer300.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    buffer301.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device50.pushErrorScope("out-of-memory");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.5, 0.25, 0.5, -0.25, 0.0, -0.25, 0.5, 1.0, -1.0, 0.75, 0.75, 0.0, 0.0, 0.0, 1.0, -0.25, -0.75, 0.75, -0.75, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -0.5, 1.0, 1.0, -0.75, 0.25, -0.5, -1.0, 0.75, 0.5, -0.5, -0.25, 0.25, 0.5, -1.0, 0.25, -0.75, 0.75, -0.25, 0.0, -0.25, 0.0, 1.0, -0.25, 0.5, 1.0, -0.25, 0.5, 0.75, 0.0, 0.5, 0.25, 0.75, 0.75, -0.75, -0.25, -1.0, 1.0, -0.75, -0.5, -0.5, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, 1.0, 0.25, 0.0, 0.75, -0.25, 0.75, -0.5, 0.0, 0.5, 1.0, 0.75, -0.5, -0.75, -0.5, 0.75, -0.75, -0.25, 0.25, -0.75, -0.75, 0.5, 0.75, 1.0, 0.5, 0.0, 1.0, -0.25, 1.0, 1.0, ]);
    
    
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device30.pushErrorScope("internal");
    compute_pass_encoder3000.popDebugGroup()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture301.destroy();
    const command_buffer500 = command_encoder500.finish();
    
    
    
    
    
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder3010.setStencilReference(1);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array7 = new Float32Array([-0.25, -0.75, 0.0, 0.25, -0.5, 0.25, 0.0, 0.25, 0.25, 0.0, -0.75, -0.25, 0.25, 0.75, 1.0, 0.5, -0.75, -1.0, 0.5, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, 0.5, 1.0, -0.25, 1.0, -0.25, -0.25, -1.0, 0.5, -0.25, 0.75, -0.5, 0.0, -0.25, 1.0, 0.75, -0.75, -0.5, -1.0, 0.5, -0.75, -0.5, 0.25, 0.25, 0.0, -1.0, 0.75, 0.25, -0.25, -0.75, 0.5, -1.0, -1.0, 1.0, 0.75, 0.25, 0.75, 0.75, 0.5, -1.0, 0.75, 0.5, -0.75, 0.0, -0.25, -0.75, 0.75, -0.25, 0.25, -0.75, -1.0, -0.5, 0.25, 0.25, -1.0, -0.25, -1.0, -1.0, 0.5, -0.75, -0.5, 0.25, -0.75, -0.5, 1.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.25, 0.5, 1.0, -0.5, -0.5, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder200.popDebugGroup();
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3010.popDebugGroup();
    
    device50.queue.submit([command_buffer500, ]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder700.popDebugGroup();
    device40.destroy();
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device10.pushErrorScope("validation");
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    command_encoder701.copyBufferToBuffer(
        buffer700,
        0,
        buffer700,
        0,
        400
    );
    
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.executeBundles([])
    device30.pushErrorScope("validation");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer700.destroy()
    
    render_pass_encoder3010.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder302.clearBuffer(buffer301);
    command_encoder701.pushDebugGroup("mygroupmarker")
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    compute_pass_encoder3000.popDebugGroup()
    query700.destroy()
    
    query700.destroy()
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    command_encoder701.insertDebugMarker("mymarker");
    query701.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    device70.pushErrorScope("validation");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    
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
    command_encoder701.insertDebugMarker("mymarker");
    
    
    query701.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    query300.destroy()
    
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const compute_pass_encoder7001 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7001" });
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
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    
    
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_bundle_encoder701.setPipeline(render_pipeline701);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder702.setPipeline(render_pipeline700);
    
    command_encoder700.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query301.destroy()
    
    
    query700.destroy()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    query700.destroy()
    render_pass_encoder3000.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder3010.executeBundles([])
    render_bundle_encoder700.setPipeline(render_pipeline703);
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    command_encoder700.pushDebugGroup("mygroupmarker")
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder701.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    device00.destroy();
    render_pass_encoder3000.setPipeline(render_pipeline301);
    buffer500.destroy()
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    compute_pass_encoder7001.pushDebugGroup("group_marker")
    command_encoder701.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group700);
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.resolveQuerySet(
        query702,
        0,
        32,
        buffer701,
        0
    )
    command_encoder702.clearBuffer(buffer701);
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline301);
    compute_pass_encoder3001.insertDebugMarker("marker")
    compute_pass_encoder7001.insertDebugMarker("marker")
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    command_encoder703.copyBufferToBuffer(
        buffer703,
        0,
        buffer701,
        0,
        400
    );
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    command_encoder301.insertDebugMarker("mymarker");
    query701.destroy()
    
    query300.destroy()
    render_bundle_encoder701.insertDebugMarker("marker");
    
    device50.destroy();
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    
    query302.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    texture302.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder701.popDebugGroup();
    command_encoder703.resolveQuerySet(
        query702,
        0,
        32,
        buffer701,
        0
    )
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder700.clearBuffer(buffer702);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: query300
    });
    query703.destroy()
    device70.queue.writeBuffer(buffer702, 0, array6, 0, array6.length);
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3040.insertDebugMarker("marker");
    command_encoder701.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    buffer302.destroy()
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    command_encoder704.resolveQuerySet(
        query702,
        0,
        32,
        buffer701,
        0
    )
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_pass_encoder3010.popDebugGroup();
    command_encoder302.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3031.executeBundles([])
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3031.popDebugGroup();
    command_encoder703.resolveQuerySet(
        query702,
        0,
        32,
        buffer703,
        0
    )
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3021.setPipeline(render_pipeline301);
    
    command_encoder704.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    
    command_encoder703.resolveQuerySet(
        query703,
        0,
        32,
        buffer701,
        0
    )
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder703.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: query300
    });
    command_encoder704.pushDebugGroup("mygroupmarker")
    command_encoder703.copyBufferToBuffer(
        buffer702,
        0,
        buffer702,
        0,
        400
    );
    render_pass_encoder3011.setPipeline(render_pipeline302);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    command_encoder703.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    compute_pass_encoder3001.setPipeline(compute_pipeline304);
    
    command_encoder704.resolveQuerySet(
        query702,
        0,
        32,
        buffer701,
        0
    )
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    render_pass_encoder3040.setPipeline(render_pipeline300);
    render_pass_encoder3000.setStencilReference(1);
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder3041.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    compute_pass_encoder7001.popDebugGroup()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    render_pass_encoder3041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3011.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    render_pass_encoder3010.setPipeline(render_pipeline302);
    compute_pass_encoder7000.popDebugGroup()
    command_encoder704.resolveQuerySet(
        query704,
        0,
        32,
        buffer701,
        0
    )
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3040.setStencilReference(1);
    command_encoder703.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    
    render_pass_encoder3030.executeBundles([render_bundle_encoder300, ])
    command_encoder704.resolveQuerySet(
        query704,
        0,
        32,
        buffer701,
        0
    )
    render_pass_encoder3041.setPipeline(render_pipeline302);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder305.clearBuffer(buffer302);
    render_pass_encoder3040.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline703.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group701);
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: query300
    });
    command_encoder704.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    render_pass_encoder3050.setStencilReference(1);
    command_encoder703.clearBuffer(buffer705);
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder703.resolveQuerySet(
        query704,
        0,
        32,
        buffer700,
        0
    )
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder3041.insertDebugMarker("marker");
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
    render_pass_encoder3011.pushDebugGroup("group_marker");
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group301);
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3051.setPipeline(render_pipeline301);
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    render_pass_encoder3011.endOcclusionQuery()
    render_pass_encoder3051.pushDebugGroup("group_marker");
    command_encoder704.resolveQuerySet(
        query702,
        0,
        32,
        buffer701,
        0
    )
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    render_pass_encoder3031.setPipeline(render_pipeline302);
    command_encoder704.popDebugGroup()
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    device30.pushErrorScope("internal");
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer300.destroy()
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query301
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    render_pass_encoder3001.insertDebugMarker("marker");
    render_bundle_encoder701.setVertexBuffer(0, buffer704);
    buffer200.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder704.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    render_bundle_encoder301.setPipeline(render_pipeline303);
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3021.pushDebugGroup("group_marker");
    render_pass_encoder3060.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3001.setPipeline(render_pipeline302);
    render_pass_encoder3020.setPipeline(render_pipeline302);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3051.setBindGroup(0, bind_group302);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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
    render_pass_encoder3060.setPipeline(render_pipeline301);
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

    render_pass_encoder3000.setBindGroup(0, bind_group304);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.popDebugGroup();
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3021.setBindGroup(0, bind_group305);
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3001.setBindGroup(0, bind_group306);
    render_pass_encoder3021.setVertexBuffer(0, buffer301);
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group307);
    render_pass_encoder3001.setVertexBuffer(0, buffer3016);
    render_pass_encoder3000.setVertexBuffer(0, buffer301);
    render_pass_encoder3030.setVertexBuffer(0, buffer302);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3001.drawIndirect(buffer307, 0);
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
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group308);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3050.setPipeline(render_pipeline300);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.draw(3);
    render_pass_encoder3040.popDebugGroup();
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group309);
    const command_buffer703 = command_encoder703.finish();
    render_pass_encoder3010.setVertexBuffer(0, buffer307);
    const command_buffer704 = command_encoder704.finish();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.end();
    device00.queue.submit([]);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3060.setBindGroup(0, bind_group3010);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3011);
    render_pass_encoder3011.endOcclusionQuery()
    render_pass_encoder3060.setVertexBuffer(0, buffer309);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndirect(buffer306, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3010, 0);
    compute_pass_encoder7020.popDebugGroup()
    render_pass_encoder3021.popDebugGroup();
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    render_pass_encoder3001.end();
    render_pass_encoder3011.setVertexBuffer(0, buffer303);
    render_pass_encoder3011.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3029, 0);
    render_pass_encoder3060.setIndexBuffer(buffer306, "uint16");
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group3013);
    render_pass_encoder3051.setVertexBuffer(0, buffer3024);
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3051.drawIndirect(buffer3019, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3011.drawIndexed(3);
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder3021.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3060.setIndexBuffer(buffer304, "uint16");
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group3014);
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group3015);
    render_pass_encoder3021.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3020.setVertexBuffer(0, buffer304);
    render_pass_encoder3050.setVertexBuffer(0, buffer3011);
    render_pass_encoder3040.setVertexBuffer(0, buffer3016);
    render_pass_encoder3031.setVertexBuffer(0, buffer307);
    render_pass_encoder3031.drawIndirect(buffer3018, 0);
    device70.queue.submit([command_buffer704, ]);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer3029, 0);
    render_pass_encoder3051.end();
    render_pass_encoder3010.end();
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3024, 0);
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder3001.end();
    compute_pass_encoder3001.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3050.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3050.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3033, "uint16");
    render_pass_encoder3011.draw(3);
    render_pass_encoder3060.setIndexBuffer(buffer3016, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder3031.end();
    render_pass_encoder3050.drawIndirect(buffer3011, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3013, 0);
    render_pass_encoder3060.end();
    render_pass_encoder3021.drawIndirect(buffer3033, 0);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3031.drawIndirect(buffer3029, 0);
    render_pass_encoder3011.drawIndirect(buffer3033, 0);
    render_pass_encoder3031.drawIndirect(buffer3022, 0);
    render_pass_encoder3051.draw(3);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3031.drawIndirect(buffer3025, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3051.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder3031.drawIndirect(buffer3027, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3051.popDebugGroup();
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    render_pass_encoder3041.setBindGroup(0, bind_group3016);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3041.setVertexBuffer(0, buffer3024);
    render_pass_encoder3041.setIndexBuffer(buffer3035, "uint16");
    render_pass_encoder3041.drawIndexedIndirect(buffer3020, 0);
    compute_pass_encoder3001.popDebugGroup()
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndexedIndirect(buffer3029, 0);
    device70.queue.submit([command_buffer701, command_buffer704, ]);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3021.draw(3);
    render_pass_encoder3050.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.draw(3);
    render_pass_encoder3040.drawIndirect(buffer3037, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3041.end();
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3020.end();
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3041.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3030.setIndexBuffer(buffer3027, "uint16");
    device30.queue.submit([command_buffer301, command_buffer303, command_buffer304, ]);
    render_pass_encoder3050.setIndexBuffer(buffer3011, "uint16");
    device30.queue.submit([command_buffer305, command_buffer306, ]);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3060.drawIndirect(buffer3011, 0);
    render_pass_encoder3060.drawIndirect(buffer3019, 0);
    render_pass_encoder3011.drawIndirect(buffer3025, 0);
    render_pass_encoder3041.end();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3050.drawIndexedIndirect(buffer3013, 0);
    command_encoder300.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer301, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3021.drawIndexed(3);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3050.drawIndexed(3);
    render_pass_encoder3051.setIndexBuffer(buffer3036, "uint16");
    render_pass_encoder3060.drawIndirect(buffer3029, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3060.drawIndirect(buffer3037, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3060.end();
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3050.drawIndirect(buffer3014, 0);
    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3039,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3017);
    render_pass_encoder3051.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3031, 0);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3029, 0);
    render_pass_encoder3051.drawIndirect(buffer3018, 0);
    render_pass_encoder3031.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer304, command_buffer306, ]);
    render_pass_encoder3050.drawIndexedIndirect(buffer3023, 0);
    compute_pass_encoder3001.end();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder3030.drawIndirect(buffer3019, 0);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer309, 0);
    render_pass_encoder3030.drawIndirect(buffer3022, 0);
    render_pass_encoder3050.drawIndirect(buffer303, 0);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3051.drawIndexedIndirect(buffer3017, 0);
    device30.queue.submit([]);
    render_pass_encoder3050.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3010.drawIndirect(buffer3017, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3010.end();
    render_pass_encoder3020.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3034, 0);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3018);
    render_pass_encoder3030.drawIndexedIndirect(buffer3019, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3060.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder3051.setIndexBuffer(buffer3028, "uint16");
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device70.queue.submit([command_buffer703, ]);
    render_pass_encoder3031.setIndexBuffer(buffer3040, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3010.drawIndirect(buffer307, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3001.draw(3);
    render_pass_encoder3011.drawIndirect(buffer3013, 0);
    device70.queue.submit([]);
    render_pass_encoder3000.drawIndirect(buffer3010, 0);
    render_pass_encoder3040.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3040.end();
    render_pass_encoder3060.drawIndirect(buffer3029, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder3050.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3031.drawIndirect(buffer305, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3040, "uint16");
    render_pass_encoder3010.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder3030.drawIndirect(buffer3017, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder3050.drawIndirect(buffer3010, 0);
    render_pass_encoder3051.draw(3);
    compute_pass_encoder7020.popDebugGroup()
    render_pass_encoder3000.drawIndirect(buffer3012, 0);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer3034, 0);
    render_pass_encoder3031.drawIndirect(buffer3027, 0);
    compute_pass_encoder7001.popDebugGroup()
    render_pass_encoder3011.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    render_pass_encoder3010.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3041.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3051.draw(3);
    render_pass_encoder3051.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3051.drawIndexedIndirect(buffer3036, 0);
    render_pass_encoder3060.drawIndirect(buffer3014, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer3034, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3040.drawIndirect(buffer304, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.end();
    render_pass_encoder3041.drawIndirect(buffer3014, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3026, 0);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3019);
    render_pass_encoder3011.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3018, 0);
}