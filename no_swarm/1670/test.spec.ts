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
    
    const array0 = new Float32Array([0.5, -0.25, 1.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.5, 0.25, -0.5, -0.75, -0.25, 0.0, -0.75, 0.25, -0.5, 0.0, 0.0, -0.25, -0.75, 1.0, -0.5, 0.25, 0.5, 0.5, 1.0, 1.0, 0.25, -0.25, 0.25, 0.5, 0.75, -0.75, -1.0, 0.0, 1.0, -0.75, -0.25, 1.0, -0.25, 0.0, 0.75, 0.0, 0.5, 0.75, 0.25, 0.0, -0.75, -0.75, 0.0, 1.0, 0.5, 0.0, 0.5, 0.5, 1.0, 0.0, 1.0, 0.75, -0.25, 0.25, -0.25, -0.75, -1.0, -0.5, 1.0, -0.75, 0.75, -0.75, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 0.75, -0.5, -0.75, 0.5, -0.5, -0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 0.25, 1.0, 0.25, 0.0, -0.25, -0.5, -1.0, 0.75, -0.25, 0.0, -0.75, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array1 = new Float32Array([1.0, 0.5, -0.5, 0.75, 0.5, 0.75, 0.0, 0.0, -0.75, 0.0, -0.75, 0.25, 0.5, -0.5, 1.0, 0.5, 0.0, 0.0, -1.0, -1.0, 0.5, -1.0, 0.75, -1.0, -0.5, -0.75, 0.5, 0.25, 0.25, -0.75, 0.5, -1.0, -1.0, 0.0, -0.75, -0.5, -0.75, 0.75, 1.0, -0.25, -0.25, -1.0, -0.75, -0.75, 0.5, -0.75, 1.0, -1.0, 0.25, 0.5, 1.0, 0.25, 0.75, -1.0, 0.5, 0.5, -0.75, 0.75, 0.25, -1.0, 0.0, -0.25, 0.75, -0.75, -0.75, 0.5, 0.75, -1.0, -0.25, 1.0, 0.25, -1.0, 0.75, -1.0, -0.5, -0.5, -0.25, -0.75, -0.75, -0.75, 0.5, 0.0, 0.75, 0.75, 0.5, 0.0, 0.75, 0.5, -1.0, -1.0, 0.5, -0.5, -0.25, 0.25, 1.0, 0.5, 1.0, -0.75, 0.75, -0.5, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([-0.5, 0.75, -0.5, 1.0, 0.5, -0.75, 1.0, 0.25, 0.0, -0.75, 0.75, 1.0, -0.5, -0.75, 0.5, -0.75, 0.5, 0.5, -0.5, 0.25, 1.0, 0.25, 0.25, 0.5, -1.0, 0.75, 0.75, 0.75, 1.0, 0.25, 0.75, 0.25, 0.75, 0.0, -0.5, 0.0, -0.5, -0.25, 0.25, 0.75, 0.25, 0.25, -1.0, 0.0, -0.25, -0.25, -0.5, -1.0, -0.25, 1.0, -0.25, 0.0, -1.0, -0.5, -1.0, 0.75, -0.5, 0.5, -0.75, 0.75, 0.75, 0.75, -1.0, -0.25, 1.0, 0.5, 0.0, 0.25, 0.25, -1.0, -0.5, 0.0, 0.0, -0.75, 0.5, -1.0, 1.0, 0.5, -0.75, -0.75, -0.75, 0.25, 0.0, -0.75, -0.25, 0.5, 0.25, -1.0, -1.0, 0.25, -1.0, 0.0, -0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 0.75, -0.25, ]);
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("out-of-memory");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const array3 = new Float32Array([-0.25, -0.5, 1.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.5, -1.0, -0.5, 0.25, 0.0, -0.25, -0.5, 0.25, 0.75, -0.25, 0.75, 0.5, -1.0, 0.0, -0.5, -0.5, -0.5, 0.5, -0.5, 0.0, 0.5, 0.0, -0.75, -0.5, 0.0, 1.0, 1.0, -1.0, -0.5, 1.0, -0.5, 0.75, -0.5, 0.75, 0.5, -0.5, 0.0, 1.0, -0.5, 0.25, -0.75, -0.75, 0.25, -0.25, 0.75, 0.75, -0.75, -0.75, 0.75, 1.0, 0.0, 0.25, -0.5, -1.0, 0.0, -0.25, 0.0, 1.0, -0.25, 0.5, -0.75, -0.25, 1.0, -0.5, 0.25, 0.25, -0.75, 0.0, 1.0, -1.0, 0.75, 1.0, 1.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.75, 0.0, 1.0, -1.0, 0.0, 0.25, 0.25, 0.0, 0.25, 1.0, 0.75, 0.25, -0.25, 0.5, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device20.destroy();
    
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.submit([command_buffer400, ]);
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture400.destroy();
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
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer300
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer300,
        0,
        400
    );
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    
    
    
    
    texture100.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
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
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    command_encoder300.insertDebugMarker("mymarker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.executeBundles([])
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    command_encoder300.popDebugGroup()
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const command_buffer300 = command_encoder300.finish();
    command_encoder402.pushDebugGroup("mygroupmarker")
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
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
    texture300.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4011.executeBundles([])
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query000.destroy()
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
        occlusionQuerySet: query400
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_pass_encoder4010.executeBundles([])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
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
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.submit([command_buffer300, ]);
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    device50.pushErrorScope("internal");
    
    
    
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    device00.pushErrorScope("internal");
    
    
    device30.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.popDebugGroup();
    render_pass_encoder4010.executeBundles([])
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4011.executeBundles([])
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4020.setStencilReference(1);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query500.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4011.popDebugGroup();
    
    texture500.destroy();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    device50.destroy();
    compute_pass_encoder4010.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4020.beginOcclusionQuery(0)
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    render_pass_encoder4010.executeBundles([])
    buffer100.destroy()
    
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.submit([]);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4020.setStencilReference(1);
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder4011.setStencilReference(1);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.insertDebugMarker("marker");
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    texture401.destroy();
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder4030.executeBundles([])
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    buffer401.destroy()
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
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
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    command_encoder404.clearBuffer(buffer400);
    render_bundle_encoder402.popDebugGroup();
    const render_bundle_encoder403 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder403",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4010.popDebugGroup();
    
    
    
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const array4 = new Float32Array([0.75, -0.25, -0.25, 1.0, -0.5, -1.0, -0.75, -0.25, -1.0, -0.5, -1.0, 0.25, 0.0, 0.75, 1.0, 1.0, -0.5, 1.0, -0.5, 0.75, -1.0, 1.0, 1.0, 1.0, -0.75, 0.25, 0.5, -0.5, -1.0, -0.75, 0.5, -1.0, -0.75, 0.5, 0.0, 0.25, 0.75, -0.25, 0.5, -0.5, 1.0, 0.0, -1.0, -0.75, -1.0, -0.75, -1.0, -1.0, 1.0, -0.75, 0.75, 0.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.5, -0.25, -1.0, 0.5, 0.75, 0.0, 0.25, -0.75, -1.0, 0.25, 0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 0.75, -0.5, 0.5, 0.0, 0.5, -0.5, -0.5, -0.75, 0.25, -0.5, -0.25, -1.0, -0.75, 0.5, 0.75, -0.5, -1.0, 0.75, 0.25, 0.0, 0.75, -0.25, -0.75, -0.75, 0.25, -0.5, -0.5, ]);
    render_bundle_encoder403.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder403.pushDebugGroup("group_marker");
    compute_pass_encoder4030.insertDebugMarker("marker")
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const render_bundle_encoder404 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder404",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_bundle_encoder403.insertDebugMarker("marker");
    
    
    buffer402.destroy()
    render_bundle_encoder403.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_pass_encoder4030.executeBundles([])
    render_pass_encoder4011.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder403.popDebugGroup();
    render_bundle_encoder403.insertDebugMarker("marker");
    compute_pass_encoder4040.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4010.executeBundles([])
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    render_pass_encoder4030.executeBundles([])
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4011.executeBundles([])
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([]);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder403.pushDebugGroup("group_marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_bundle_encoder403.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder4020.popDebugGroup();
    device40.pushErrorScope("validation");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device00.pushErrorScope("internal");
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device40.destroy();
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    render_pass_encoder4040.executeBundles([render_bundle_encoder401, render_bundle_encoder404, ])
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-0.25, 0.0, 0.5, 1.0, -0.5, -0.5, -1.0, -0.75, -0.5, 0.25, -1.0, -1.0, 0.75, 0.75, -0.5, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.5, -1.0, 0.25, 0.5, -0.75, 1.0, -0.5, 1.0, -0.75, 0.25, 0.5, 0.25, -0.75, 1.0, -0.25, -0.25, 0.0, 0.5, 0.0, 0.75, 0.25, -1.0, 0.25, 0.0, -1.0, 0.75, 0.75, -0.75, 0.0, -0.75, 1.0, -1.0, 0.0, 0.75, 1.0, -1.0, 1.0, 0.0, -1.0, 1.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.25, -0.5, -0.25, 0.25, -0.5, 0.5, 1.0, 0.75, 0.75, -0.25, 0.75, 0.25, -1.0, 0.25, 0.0, 1.0, -0.25, 0.75, -0.25, -0.25, 0.5, 0.75, 0.75, -0.75, 0.0, 0.0, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, 0.75, 0.75, ]);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
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
    
    const command_buffer600 = command_encoder600.finish();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    texture101.destroy();
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
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
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    compute_pass_encoder4040.insertDebugMarker("marker")
    compute_pass_encoder4010.popDebugGroup()
    buffer200.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    
    render_bundle_encoder404.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder700.insertDebugMarker("mymarker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    query300.destroy()
    
    
    device60.pushErrorScope("out-of-memory");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_buffer700 = command_encoder700.finish();
    
    render_bundle_encoder403.insertDebugMarker("marker");
    
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer401.destroy()
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("out-of-memory");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    texture600.destroy();
    
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    texture600.destroy();
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    
    
    device70.queue.submit([command_buffer700, ]);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    buffer701.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.popDebugGroup();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    
    const command_buffer602 = command_encoder602.finish();
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
    device60.queue.submit([command_buffer602, ]);
    device80.queue.submit([]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder100.popDebugGroup()
    device70.queue.submit([]);
    device60.queue.submit([command_buffer601, ]);
    const command_buffer000 = command_encoder000.finish();
    device70.queue.submit([]);
    device60.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    device60.queue.submit([command_buffer601, ]);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer602, ]);
    device80.queue.submit([]);
}