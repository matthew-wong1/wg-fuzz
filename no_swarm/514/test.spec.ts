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
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device00.destroy();
    device10.destroy();
    
    
    const array0 = new Float32Array([-1.0, 1.0, 0.75, 0.0, 0.5, 1.0, -1.0, -0.25, 1.0, 0.0, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, 1.0, -0.25, 0.0, 1.0, 0.0, -0.25, 0.25, 1.0, 0.25, -0.5, 1.0, -0.75, -0.5, 0.75, -0.75, 1.0, 0.5, 0.75, -0.75, 1.0, -0.75, -0.75, 0.0, 0.0, 1.0, -0.25, -0.25, 0.5, -1.0, -0.5, 0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.5, 1.0, 0.75, 0.5, -0.25, -1.0, 0.0, 0.0, -0.25, -1.0, 0.5, 0.5, -0.75, 1.0, 0.5, -1.0, 1.0, -0.5, -0.5, -0.5, 0.75, -1.0, -0.5, 0.0, 1.0, 0.0, -0.25, -1.0, 0.25, 0.25, -0.5, -0.75, 1.0, -0.75, 0.0, -0.25, -1.0, 0.5, 0.0, -1.0, -0.5, -0.25, 0.75, -0.25, ]);
    
    
    
    
    const array1 = new Float32Array([-0.75, 1.0, 0.5, 1.0, 0.0, -0.25, -0.5, -0.25, -0.75, -0.5, 0.0, -1.0, 0.75, -0.25, 0.75, 0.5, -0.75, 0.0, 0.75, -0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 1.0, -0.75, 0.0, 0.5, 0.25, 0.25, 0.0, 0.75, -0.75, 0.0, 0.0, 0.75, -0.5, -0.25, -0.5, -0.75, -0.75, 1.0, -0.75, 0.25, 0.25, 0.0, 0.75, -0.75, 0.75, 0.25, -0.5, 0.5, 0.75, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, -1.0, 0.5, -1.0, -0.25, 0.5, -0.75, -0.5, -0.5, -0.5, 0.0, 0.5, -1.0, -0.25, 0.75, 0.5, 0.75, -0.5, -0.75, 0.25, 0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.75, -1.0, 0.0, 1.0, -0.5, 0.75, -0.5, -0.25, 1.0, 0.25, 0.0, -1.0, 0.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture400.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device40.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array2 = new Float32Array([0.75, 0.75, -0.5, -0.75, 0.25, 0.5, -0.75, -0.75, 0.5, 0.25, 0.75, 0.5, 1.0, 0.25, -1.0, 0.5, -0.5, 1.0, -0.75, -0.25, -0.25, 0.75, 1.0, 1.0, 0.5, -0.25, -1.0, -1.0, -0.75, -0.75, -0.5, 0.5, 0.0, 0.5, 0.5, -0.75, 0.25, -0.75, 1.0, -1.0, -0.25, 1.0, 0.25, -0.25, 0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.25, -1.0, 1.0, -1.0, -0.75, -0.25, 0.0, 0.0, -0.5, 0.75, -0.75, 0.75, 0.0, 0.0, 0.25, 0.5, 0.0, 0.5, 1.0, 0.75, 0.5, 0.5, -0.25, 1.0, 0.0, -1.0, 0.5, 0.75, 0.25, -0.5, 0.75, -0.25, -0.5, 0.75, -0.25, -0.75, 1.0, 0.75, ]);
    
    
    
    const array3 = new Float32Array([1.0, -0.25, 0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 1.0, 0.25, 0.0, -0.75, -1.0, 0.75, 0.0, -1.0, 0.0, -1.0, 0.0, 0.75, 0.5, 0.0, 0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -0.5, 0.0, 1.0, 0.0, -0.75, 0.0, -1.0, -1.0, -0.75, -0.25, -0.75, -0.25, 0.0, -0.75, -1.0, 0.75, 0.0, -0.75, -0.25, -0.75, 0.5, -0.5, -1.0, -0.5, 0.5, 0.5, 1.0, 1.0, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 0.0, 0.75, 0.75, 0.5, -1.0, -1.0, -1.0, 0.0, -0.25, 0.25, 0.5, 0.0, 0.0, 0.75, -0.5, 0.25, -0.5, -0.5, -1.0, 0.0, 0.25, 0.75, 0.5, 0.25, 1.0, 1.0, 1.0, -0.5, 1.0, -0.75, 0.25, 0.75, -0.25, ]);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer300.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    texture300.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device20.destroy();
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture302.destroy();
    
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder300.insertDebugMarker("mymarker");
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    buffer302.destroy()
    device30.pushErrorScope("internal");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer301.destroy()
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    texture301.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.75, 0.0, 1.0, -0.25, 0.25, -0.75, -0.5, -0.5, 1.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.0, 0.25, -0.25, 0.75, 1.0, -1.0, -1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 0.0, -0.75, 0.25, 1.0, 0.5, -0.25, -0.75, 0.25, 0.25, -0.5, -0.25, -0.75, -0.5, 0.25, -0.75, 0.0, -0.25, -0.5, -0.25, -0.25, -0.75, 0.0, 1.0, 0.0, -0.5, 1.0, 0.5, 1.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, 0.25, 0.75, 0.25, -0.5, 0.75, -0.75, -0.25, -0.5, 0.25, 0.25, 0.75, 0.75, 0.75, -1.0, -1.0, -0.75, 0.75, -1.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.5, 0.75, 0.75, -0.75, -1.0, 0.5, -1.0, -0.5, -1.0, 0.0, -1.0, -0.75, -0.25, -1.0, 0.25, -0.25, 0.5, ]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer303.destroy()
    texture303.destroy();
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
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
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    
    render_bundle_encoder301.popDebugGroup();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.75, 1.0, 1.0, 0.0, 0.75, -0.75, 0.0, -1.0, -0.75, -0.75, 0.5, 0.5, -0.5, -0.75, 0.0, -0.75, -0.25, 0.75, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, -0.25, -0.5, 0.25, 0.25, 0.25, 1.0, 0.5, -1.0, -0.5, 0.25, -0.25, -0.5, 0.75, -0.5, 0.75, 1.0, -0.25, 0.25, -0.75, 0.25, 0.75, 0.25, -0.75, -0.5, -0.75, -0.75, -1.0, 0.25, 0.0, -1.0, 0.25, 0.25, 0.5, -0.75, -1.0, -0.5, -0.5, 0.0, 0.75, -0.5, 0.5, -0.25, 0.5, -0.25, 0.5, -0.75, 0.0, 0.75, 0.25, -0.75, -0.5, -0.75, 0.0, -0.75, -0.25, 0.5, 0.5, 1.0, -0.5, -0.75, 0.5, 0.25, 1.0, 0.0, -0.75, -0.75, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, 0.75, -1.0, 0.5, -0.5, ]);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
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
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder300.insertDebugMarker("marker");
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
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    buffer304.destroy()
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    compute_pass_encoder3000.popDebugGroup()
    
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline504);
    device70.pushErrorScope("out-of-memory");
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    buffer500.destroy()
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("out-of-memory");
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer307, 0);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
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
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    command_encoder701.pushDebugGroup("mygroupmarker")
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([-0.5, -0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 0.0, -0.75, 0.5, 0.5, -0.25, 0.0, -0.75, -0.75, 0.0, -0.5, -1.0, -0.25, -1.0, -0.5, -0.75, -0.75, -1.0, 0.25, -1.0, -0.75, -0.5, -1.0, -0.75, 0.5, 0.75, 0.5, -0.75, 0.5, -0.25, 0.5, 0.5, -1.0, -0.75, 0.5, 0.0, -0.75, -1.0, -0.75, -0.25, 0.5, 0.75, -0.75, 0.25, 0.25, -0.5, 0.0, -0.75, -0.75, 1.0, -0.5, -0.5, -1.0, 0.0, 1.0, -0.25, -0.25, 0.75, 0.0, -1.0, -0.25, -0.75, 0.25, 0.0, 0.75, -1.0, 0.5, -0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.5, -1.0, 0.25, 1.0, 0.5, 0.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.0, -0.25, 0.75, 0.0, -0.25, 0.25, 0.0, 0.75, -0.25, -1.0, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer306.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device60.destroy();
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    query301.destroy()
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    buffer501.destroy()
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    
    
    
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3010.popDebugGroup()
    command_encoder701.popDebugGroup()
    const command_buffer701 = command_encoder701.finish();
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder800.pushDebugGroup("mygroupmarker")
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
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
    device30.queue.writeBuffer(buffer307, 0, array2, 0, array2.length);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7020.setPipeline(compute_pipeline700);
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const array7 = new Float32Array([-0.5, 0.5, 0.0, 1.0, -0.5, -0.75, 0.0, -0.75, -1.0, -0.75, 0.0, 0.0, -1.0, 0.0, -0.5, 1.0, -0.25, -1.0, -1.0, 1.0, -0.75, 0.0, -0.5, 0.25, -0.5, 1.0, -0.75, 0.0, -0.25, -0.25, 0.0, -0.5, 0.25, -0.75, 0.75, -0.5, 0.25, -0.5, 0.75, 0.75, -0.5, 0.75, 0.25, -0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 0.0, -0.5, -1.0, 0.5, -0.25, -0.75, -0.5, 0.25, 0.75, 0.5, 0.25, -1.0, -1.0, -0.5, 1.0, 1.0, 1.0, -1.0, 0.25, -0.75, -0.25, 0.25, 0.75, -1.0, 0.5, -0.25, -1.0, 1.0, 1.0, -0.5, -0.5, 0.5, 1.0, 0.75, 0.5, 1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.25, 0.25, -1.0, 0.25, 0.75, 0.75, 0.25, 0.75, 0.75, 0.75, ]);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer307, 0, array7, 0, array7.length);
    compute_pass_encoder5010.setPipeline(compute_pipeline502);
    
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    buffer309.destroy()
    compute_pass_encoder5000.insertDebugMarker("marker")
    query300.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    command_encoder800.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer307, 0, array3, 0, array3.length);
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device50.pushErrorScope("internal");
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout901]
    });
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    device100.destroy();
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    texture901.destroy();
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
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
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    buffer700.destroy()
    texture304.destroy();
    
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    query501.destroy()
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout902]
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    command_encoder800.insertDebugMarker("mymarker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    texture900.destroy();
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    
    device70.pushErrorScope("validation");
    
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    query501.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout505,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    command_encoder800.insertDebugMarker("mymarker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder502.insertDebugMarker("mymarker");
    device90.destroy();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    buffer308.destroy()
    
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
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const array8 = new Float32Array([0.75, -0.75, -0.5, 0.25, 0.75, 0.0, 0.0, 0.25, -0.75, -0.75, 0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 0.5, 1.0, -0.25, 0.5, -1.0, -1.0, -0.5, -0.5, 0.5, 0.0, -0.75, -1.0, -0.75, -1.0, -0.75, 0.25, -0.5, 0.5, 0.25, 0.25, -1.0, 0.25, -0.75, -0.75, 0.5, -0.25, -0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 0.0, 0.25, 0.75, 0.0, -0.5, -0.75, 1.0, -0.25, 0.5, -0.5, 1.0, 0.25, -0.5, 0.25, -0.5, -0.5, 0.5, -1.0, -1.0, 0.25, -0.25, 0.75, 0.25, -0.25, 1.0, -0.25, 1.0, -1.0, -0.75, 0.75, -0.5, 0.0, 1.0, -0.75, 0.0, -0.5, 1.0, -0.5, 0.5, -0.25, 1.0, 1.0, 0.5, 0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 0.0, 0.25, 0.25, ]);
    
    texture500.destroy();
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.executeBundles([])
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query800.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder3020.executeBundles([])
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    command_encoder502.pushDebugGroup("mygroupmarker")
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setPipeline(render_pipeline302);
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.popDebugGroup();
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    query302.destroy()
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout501,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout501,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    command_encoder800.clearBuffer(buffer801);
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer801, 0, array7, 0, array7.length);
    render_pass_encoder3020.setStencilReference(1);
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder7000.setPipeline(compute_pipeline705);
    compute_pass_encoder8010.setPipeline(compute_pipeline800);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        layout: compute_pipeline705.getBindGroupLayout(0),
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

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.dispatchWorkgroups(100);
    const command_buffer802 = command_encoder802.finish();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    compute_pass_encoder3010.end();
    command_encoder301.popDebugGroup()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    command_encoder800.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    device30.queue.submit([command_buffer303, ]);
    command_encoder502.popDebugGroup()
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer802,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer803,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group800);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer503 = command_encoder503.finish();
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    device50.queue.submit([command_buffer503, ]);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer507, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3015, 0);
    compute_pass_encoder8010.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder8010.end();
    compute_pass_encoder5010.dispatchWorkgroups(100);
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
        layout: compute_pipeline700.getBindGroupLayout(0),
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

    compute_pass_encoder7020.setBindGroup(0, bind_group701);
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer706, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer706, 0);
    const command_buffer801 = command_encoder801.finish();
    compute_pass_encoder3000.end();
    compute_pass_encoder7020.end();
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder5010.end();
    compute_pass_encoder7000.end();
    device50.queue.submit([command_buffer502, ]);
    device80.queue.submit([command_buffer801, ]);
    const command_buffer300 = command_encoder300.finish();
    const command_buffer702 = command_encoder702.finish();
    device70.queue.submit([command_buffer701, ]);
    const command_buffer501 = command_encoder501.finish();
    const command_buffer800 = command_encoder800.finish();
    device70.queue.submit([command_buffer702, ]);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer700 = command_encoder700.finish();
    compute_pass_encoder5000.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer500 = command_encoder500.finish();
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer500, ]);
    device30.queue.submit([command_buffer301, ]);
}