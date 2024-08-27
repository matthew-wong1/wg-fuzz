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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.popDebugGroup()
    const array0 = new Float32Array([1.0, 0.75, -0.25, -0.75, -1.0, 1.0, -1.0, 0.0, -0.75, -0.75, -1.0, -1.0, -0.5, 0.25, 0.75, -0.5, 0.0, -1.0, -1.0, 0.25, 0.5, 1.0, -0.25, 0.0, 0.75, -0.75, 0.25, 0.5, -1.0, 0.75, -1.0, 0.5, -0.75, -1.0, -0.5, 0.75, -1.0, 0.0, 1.0, -0.25, 0.75, -1.0, 0.0, -0.5, -0.5, 1.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.75, -0.75, -0.25, -0.25, -0.5, 0.75, -1.0, 1.0, -1.0, 0.5, 1.0, 0.0, 0.75, 0.5, -1.0, -0.25, -0.25, 1.0, -1.0, 0.75, -0.75, 1.0, 0.0, -1.0, -0.25, 0.75, -1.0, -0.75, 0.75, -0.75, -0.5, -1.0, -1.0, -0.5, -0.5, 0.75, -0.5, -0.75, -1.0, -1.0, 0.0, -0.75, 0.75, 0.0, 0.5, -0.5, 0.0, -0.5, ]);
    const command_buffer002 = command_encoder002.finish();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer002, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer000.destroy()
    const command_buffer003 = command_encoder003.finish();
    
    const array1 = new Float32Array([-0.5, 1.0, -0.75, -0.5, -1.0, 0.5, -0.5, 0.5, 0.0, 0.25, -0.5, 0.0, -0.75, 0.75, -0.25, 0.25, 0.25, 0.0, -0.5, 0.0, 0.75, -0.25, -1.0, -0.5, -0.5, -0.25, 0.25, -0.5, 0.5, -0.5, 0.5, 0.5, -1.0, -0.75, -0.5, -0.5, -0.75, 0.5, 0.25, -0.5, -0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 0.25, 1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.0, 1.0, -1.0, 1.0, 0.75, 0.0, -0.75, -0.25, -0.75, 1.0, 0.0, 0.25, 0.5, -1.0, 0.75, 0.5, -0.5, 0.75, -1.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.25, -1.0, 0.0, -0.5, 0.25, 0.25, 0.25, -0.25, -0.75, 0.0, 0.25, 0.75, 1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 0.75, -1.0, 0.75, 0.25, -0.5, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder004.insertDebugMarker("mymarker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer004 = command_encoder004.finish();
    device00.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const array2 = new Float32Array([0.25, -1.0, -0.25, -1.0, -0.25, -1.0, 1.0, 0.25, 0.5, -0.5, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, 0.0, 1.0, 0.0, 0.0, 0.75, -0.25, -0.75, -0.25, -0.75, -0.5, 0.5, -1.0, 1.0, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, -1.0, 1.0, 0.25, -0.5, -1.0, 0.25, 0.5, 0.0, 0.5, -0.5, -0.75, -1.0, 0.75, -1.0, -0.75, 0.25, -0.5, 0.0, -0.5, 1.0, 0.0, 0.25, -1.0, -0.75, -0.5, 0.0, 0.75, -1.0, 0.0, 1.0, 0.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.75, 0.5, -0.75, -0.75, 1.0, 0.75, 1.0, 0.0, -1.0, 0.0, -0.5, 0.0, -0.75, -0.75, -0.75, 1.0, 1.0, -0.75, 0.75, -0.75, -0.75, 0.5, -0.5, 0.5, -1.0, -0.25, 0.0, -0.5, -0.5, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    compute_pass_encoder0000.popDebugGroup()
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.destroy();
    command_encoder005.copyTextureToTexture(
        {
            texture: texture001
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder005.insertDebugMarker("mymarker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer005 = command_encoder005.finish();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    buffer002.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
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
    device20.pushErrorScope("internal");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.pushErrorScope("validation");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder000.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
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
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.queue.submit([command_buffer003, ]);
    
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query302.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    buffer201.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder3000.setStencilReference(1);
    query200.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array3 = new Float32Array([-0.75, 0.75, 0.5, -0.75, -0.5, 0.75, 0.0, -1.0, 0.75, -0.75, 0.25, 0.25, -0.25, -0.5, 1.0, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, 0.5, -0.5, 0.75, 0.0, -0.25, 0.5, -1.0, 0.75, 0.5, -0.75, 0.5, -0.25, 0.5, -1.0, 0.25, 1.0, 0.5, -1.0, -1.0, 0.5, 0.75, 0.0, 0.0, 1.0, -0.5, 0.5, -0.25, 0.5, -0.25, -1.0, -1.0, 1.0, 0.25, 1.0, -0.5, -0.5, -0.5, 0.5, -0.75, -1.0, 0.5, -1.0, 0.75, 1.0, 0.25, 0.0, 1.0, 0.25, -0.5, 0.75, 0.5, -0.25, -0.25, 0.75, -1.0, -0.5, -0.25, 0.5, -0.25, 0.0, 0.75, 0.0, -1.0, -0.25, -0.25, 0.0, 0.0, -1.0, 0.25, 0.5, -0.75, -0.25, 1.0, 1.0, 0.25, -0.5, -1.0, -0.25, 0.25, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder3000.setStencilReference(1);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0000.popDebugGroup()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer200.destroy()
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder200.popDebugGroup();
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const command_buffer301 = command_encoder301.finish();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const command_buffer201 = command_encoder201.finish();
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    device20.pushErrorScope("validation");
    buffer300.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer501.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer202.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.executeBundles([])
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer500.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder3000.executeBundles([])
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    buffer003.destroy()
    device70.pushErrorScope("validation");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device30.pushErrorScope("out-of-memory");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.executeBundles([])
    query200.destroy()
    query301.destroy()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
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
    buffer501.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3020.popDebugGroup();
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3000.executeBundles([])
    command_encoder006.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    buffer201.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3020.setStencilReference(1);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0000.insertDebugMarker("marker");
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    command_encoder300.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder202.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder700.pushDebugGroup("mygroupmarker")
    const array4 = new Float32Array([0.5, 0.0, 0.75, -1.0, 0.0, 0.0, -0.25, 0.0, 0.75, -0.5, -1.0, 0.5, -0.25, 1.0, 0.75, 0.0, 0.25, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.0, -1.0, -0.75, -0.5, 0.0, 0.75, 0.5, 0.5, 0.5, 0.0, 0.25, 1.0, 0.5, 0.25, 0.75, 0.75, 0.0, 0.0, -0.5, -0.25, -0.5, 0.0, -0.25, -0.25, -1.0, 0.75, 0.75, 0.25, -1.0, 0.75, -0.5, 1.0, -0.5, -0.25, 0.0, 1.0, 0.75, -0.5, 0.5, 1.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, -0.75, -0.75, -0.5, 0.75, 0.75, -1.0, -0.75, 0.0, -0.5, 0.75, -1.0, 0.25, 1.0, 0.0, -0.25, -0.5, -0.75, -0.75, 0.75, -0.75, 0.25, 0.0, -0.75, -0.25, ]);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query302.destroy()
    query500.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array5 = new Float32Array([-0.75, -0.75, 0.5, -0.5, 1.0, 0.0, 0.0, -0.75, -0.25, 0.75, -0.5, 0.0, 0.75, -0.25, -0.25, 1.0, -1.0, 0.25, -0.25, 0.75, 0.5, 0.0, -1.0, -0.5, 0.0, -0.5, -0.75, 0.5, 0.5, -0.75, 0.5, 0.5, -0.75, -0.75, -0.75, 0.5, -0.75, 1.0, -0.75, -0.75, -0.5, 0.0, -0.75, 0.5, 0.25, 1.0, 1.0, 0.0, 0.25, 0.25, 0.0, -0.75, 0.0, 1.0, -0.75, 0.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.75, 1.0, -0.75, -0.75, 0.25, -0.25, 0.0, -0.5, -1.0, 0.0, 0.75, -0.25, -0.25, -1.0, -0.5, 0.75, 0.75, 0.0, -0.5, 1.0, -0.75, -1.0, 0.5, -0.5, 0.25, 0.75, -0.25, -0.75, -0.75, 0.25, -0.25, -0.75, 1.0, 0.0, -0.5, 0.5, -0.25, 0.5, 0.5, ]);
    compute_pass_encoder5000.popDebugGroup()
    command_encoder300.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_pass_encoder3020.executeBundles([])
    render_pass_encoder0000.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setStencilReference(1);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([-0.75, -0.5, 0.0, 0.0, -0.75, -0.5, -0.75, -0.5, 0.75, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, -0.25, 0.25, 0.25, -0.25, 0.75, -1.0, 0.75, 0.75, -0.5, 0.25, 0.75, -0.25, -0.75, 0.5, 1.0, 0.75, -0.5, 0.0, -0.5, -1.0, -1.0, 0.25, 0.25, -0.75, 0.5, 1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 1.0, 1.0, 0.25, 0.25, 0.0, 1.0, 0.25, 0.25, -0.75, -0.5, 0.75, 1.0, -1.0, -1.0, -0.75, 0.0, 0.25, 1.0, 0.75, -0.25, 0.5, 0.5, 0.5, -0.5, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.25, 0.0, 0.5, 0.0, -0.25, 0.75, 0.5, 0.5, 1.0, 0.75, 0.25, 0.5, -1.0, -0.25, 0.75, -0.25, -0.25, -0.5, 0.5, 0.75, 0.5, ]);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0001.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    device80.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer800.destroy()
    
    
    compute_pass_encoder8000.popDebugGroup()
    buffer202.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    device60.destroy();
    
    command_encoder801.pushDebugGroup("mygroupmarker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.insertDebugMarker("mymarker");
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    query400.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer301.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device80.pushErrorScope("internal");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query201.destroy()
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
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer500.destroy()
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    render_pass_encoder3000.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    command_encoder801.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.popDebugGroup();
    command_encoder700.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder3030.popDebugGroup();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    device00.queue.submit([command_buffer001, ]);
    device80.queue.submit([command_buffer801, ]);
    device20.queue.submit([command_buffer202, ]);
    const command_buffer602 = command_encoder602.finish();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0001.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    command_encoder601.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    device00.queue.submit([command_buffer001, ]);
    const command_buffer601 = command_encoder601.finish();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3020.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer201, ]);
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder0000.popDebugGroup();
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder8000.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    const command_buffer100 = command_encoder100.finish();
    device80.queue.submit([command_buffer800, ]);
    device70.queue.submit([command_buffer700, ]);
    device00.queue.submit([command_buffer002, ]);
    device70.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([command_buffer801, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder3020.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    const command_buffer500 = command_encoder500.finish();
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([command_buffer002, ]);
    device80.queue.submit([command_buffer800, ]);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3020.endOcclusionQuery()
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder5000.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder3030.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    device40.queue.submit([]);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3030.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder3030.endOcclusionQuery()
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    compute_pass_encoder8000.popDebugGroup()
    device70.queue.submit([]);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, command_buffer006, ]);
    device50.queue.submit([]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3030.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    device50.queue.submit([command_buffer500, ]);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder3020.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device50.queue.submit([command_buffer500, ]);
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer200 = command_encoder200.finish();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder3030.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder5000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer303, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3030.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    command_encoder300.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder2000.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    device80.queue.submit([command_buffer801, ]);
    device50.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0060.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([]);
    compute_pass_encoder8000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer300, ]);
    device80.queue.submit([]);
    device40.queue.submit([]);
    device50.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder3000.endOcclusionQuery()
    compute_pass_encoder0060.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3000.endOcclusionQuery()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0001.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0000.popDebugGroup()
    device70.queue.submit([]);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    device50.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    device40.queue.submit([]);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([]);
    device50.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer500, ]);
}