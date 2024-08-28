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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([1.0, 0.5, 0.0, 1.0, -1.0, 0.25, 0.0, -0.25, 0.25, 0.75, -1.0, 0.5, 0.5, -0.75, 0.25, 1.0, -0.75, -0.75, 1.0, -0.75, -0.25, 0.75, -0.5, -0.5, 0.75, 1.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.25, -0.25, 0.0, 0.25, 0.25, -0.75, -0.25, 0.0, 0.75, 1.0, 0.5, 0.0, -1.0, -0.5, 0.25, -0.5, 0.75, -1.0, -0.25, 0.25, -0.25, -0.5, 1.0, 0.75, -0.75, 1.0, 0.5, -1.0, 0.25, -0.75, -0.5, -1.0, 1.0, 1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.0, -1.0, 1.0, 0.25, -0.25, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, -0.5, 1.0, -0.25, 0.75, 0.25, -1.0, -0.5, -0.25, 0.25, -0.75, 0.0, 0.5, -0.5, -0.25, 1.0, 1.0, 0.0, -0.25, 0.0, ]);
    const array1 = new Float32Array([0.0, -0.5, 0.0, -0.75, -0.5, 1.0, -0.25, 0.5, 0.75, 0.25, 0.0, 0.5, 0.75, -0.5, 0.25, 1.0, -0.75, -1.0, 0.0, 0.0, 0.5, 0.5, 1.0, 0.75, 0.5, 0.0, 0.5, 0.0, 0.25, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, -0.25, -0.25, -0.5, 0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 0.5, -1.0, -1.0, -1.0, -1.0, -0.75, 1.0, 0.25, 0.5, -0.25, -1.0, -0.25, -0.75, -0.75, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, -0.25, 0.75, 1.0, -1.0, 1.0, 0.0, 0.25, -0.25, -1.0, 1.0, -1.0, -0.25, 0.75, -1.0, -1.0, 0.0, 0.75, 1.0, -0.25, -0.5, -0.25, 0.25, -1.0, 0.5, -1.0, 0.5, 0.25, 0.5, -0.25, 0.25, -0.5, 0.75, 0.5, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer301.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.pushErrorScope("out-of-memory");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const array2 = new Float32Array([0.25, -0.5, 0.75, -0.25, 0.0, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 0.25, -0.75, -1.0, -1.0, -1.0, 0.0, 0.5, 0.0, -1.0, -0.25, -0.25, -0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 0.75, 0.5, 0.75, 0.25, 0.5, 0.0, -0.75, 0.75, 1.0, 0.0, -0.25, 0.25, -0.5, 0.5, 0.5, -0.25, 0.5, 0.25, 0.5, 0.75, 1.0, -0.25, -0.75, 0.0, -0.75, 1.0, -0.5, 0.0, -0.25, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, 0.25, 0.0, -0.75, 0.5, -0.25, 0.75, 0.75, -1.0, 0.5, -0.75, 0.5, 0.0, 0.75, -0.5, -1.0, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.75, -0.5, -1.0, 0.5, -0.5, -0.75, 1.0, -0.5, -0.75, 1.0, -1.0, 0.5, -0.75, -0.25, 0.75, -0.5, ]);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture301.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer302.destroy()
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture302.destroy();
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture303.destroy();
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device20.destroy();
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const array3 = new Float32Array([-0.5, -0.75, 0.25, -0.25, -1.0, 0.5, 1.0, 0.75, 1.0, 0.75, -1.0, 0.75, 1.0, -0.25, -0.25, 0.75, -0.25, 0.25, -1.0, -1.0, 0.75, -0.5, -0.5, 0.0, 0.25, 0.25, -0.75, 1.0, -0.5, -1.0, 0.75, 0.25, 0.25, 0.5, 0.5, 0.0, 1.0, 1.0, 0.25, 0.0, 0.75, -0.25, -0.75, 0.5, 0.0, -1.0, -0.5, -0.5, 0.0, -0.25, -1.0, 0.25, 0.0, -0.25, 0.75, -0.25, -0.25, 0.75, 0.75, 0.0, 0.0, 0.5, -0.25, -0.75, -0.75, -0.75, 0.25, 0.0, 0.75, -0.5, 0.25, 0.75, 0.25, -1.0, 0.5, -1.0, -1.0, -0.25, -0.5, 0.5, 0.75, 0.25, 1.0, 1.0, -1.0, -0.75, -1.0, 1.0, -0.75, -0.75, -0.5, 0.25, 0.5, -1.0, -0.25, -0.5, 0.25, -0.75, 0.75, -0.5, ]);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device30.pushErrorScope("internal");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.clearBuffer(buffer300);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    query300.destroy()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    buffer303.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query301.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    query300.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query300.destroy()
    
    render_pass_encoder3010.executeBundles([])
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer600 = command_encoder600.finish();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    buffer300.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    const command_buffer601 = command_encoder601.finish();
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
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder3010.executeBundles([])
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query300.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder602.insertDebugMarker("mymarker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder602.insertDebugMarker("mymarker");
    const command_buffer604 = command_encoder604.finish();
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    texture600.destroy();
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setPipeline(render_pipeline301);
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout303]
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    texture601.destroy();
    const command_buffer602 = command_encoder602.finish();
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const compute_pipeline3057 = device30.createComputePipeline({
        label: "compute_pipeline3057",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3058 = device30.createComputePipeline({
        label: "compute_pipeline3058",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3059 = device30.createComputePipeline({
        label: "compute_pipeline3059",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline3060 = device30.createComputePipeline({
        label: "compute_pipeline3060",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3061 = device30.createComputePipeline({
        label: "compute_pipeline3061",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3062 = device30.createComputePipeline({
        label: "compute_pipeline3062",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3063 = device30.createComputePipeline({
        label: "compute_pipeline3063",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3064 = device30.createComputePipeline({
        label: "compute_pipeline3064",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3065 = device30.createComputePipeline({
        label: "compute_pipeline3065",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3066 = device30.createComputePipeline({
        label: "compute_pipeline3066",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("validation");
    const array4 = new Float32Array([1.0, -1.0, 1.0, 0.5, 0.75, -0.25, 0.25, 0.25, 0.75, -0.5, -0.5, -0.25, 0.5, -0.75, 0.0, 0.0, -0.5, -0.25, 0.5, -0.25, 0.5, 0.75, -0.25, -0.5, 0.5, -0.75, -0.5, -1.0, 0.75, 0.25, 1.0, 0.0, 0.75, 0.75, 0.5, 0.5, 0.25, -1.0, 0.75, 0.5, 1.0, -1.0, -0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 0.0, 0.25, -1.0, 0.25, -1.0, -0.75, -1.0, 0.0, -0.25, -1.0, -0.25, 1.0, 1.0, -0.25, 0.5, 1.0, 0.75, 0.75, -0.25, 0.25, -0.5, -0.5, -0.25, -1.0, -0.75, -1.0, -0.5, 0.0, 0.75, 0.5, 0.5, -0.75, 0.25, 1.0, 0.75, 0.0, 1.0, -0.75, 0.5, -0.25, 0.0, -0.25, -0.5, 1.0, 1.0, -0.75, 0.0, -0.25, -0.25, 1.0, -0.75, -1.0, ]);
    const compute_pipeline3067 = device30.createComputePipeline({
        label: "compute_pipeline3067",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3068 = device30.createComputePipeline({
        label: "compute_pipeline3068",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3069 = device30.createComputePipeline({
        label: "compute_pipeline3069",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3070 = device30.createComputePipeline({
        label: "compute_pipeline3070",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3071 = device30.createComputePipeline({
        label: "compute_pipeline3071",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3072 = device30.createComputePipeline({
        label: "compute_pipeline3072",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3073 = device30.createComputePipeline({
        label: "compute_pipeline3073",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3074 = device30.createComputePipeline({
        label: "compute_pipeline3074",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const compute_pipeline3075 = device30.createComputePipeline({
        label: "compute_pipeline3075",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline3076 = device30.createComputePipeline({
        label: "compute_pipeline3076",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline3077 = device30.createComputePipeline({
        label: "compute_pipeline3077",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3078 = device30.createComputePipeline({
        label: "compute_pipeline3078",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3079 = device30.createComputePipeline({
        label: "compute_pipeline3079",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3080 = device30.createComputePipeline({
        label: "compute_pipeline3080",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3081 = device30.createComputePipeline({
        label: "compute_pipeline3081",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3082 = device30.createComputePipeline({
        label: "compute_pipeline3082",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline3083 = device30.createComputePipeline({
        label: "compute_pipeline3083",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder603.insertDebugMarker("mymarker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    const compute_pipeline3084 = device30.createComputePipeline({
        label: "compute_pipeline3084",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3085 = device30.createComputePipeline({
        label: "compute_pipeline3085",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3086 = device30.createComputePipeline({
        label: "compute_pipeline3086",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3087 = device30.createComputePipeline({
        label: "compute_pipeline3087",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device80.destroy();
    
    
    const compute_pipeline3088 = device30.createComputePipeline({
        label: "compute_pipeline3088",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3089 = device30.createComputePipeline({
        label: "compute_pipeline3089",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3090 = device30.createComputePipeline({
        label: "compute_pipeline3090",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3091 = device30.createComputePipeline({
        label: "compute_pipeline3091",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3092 = device30.createComputePipeline({
        label: "compute_pipeline3092",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3093 = device30.createComputePipeline({
        label: "compute_pipeline3093",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3094 = device30.createComputePipeline({
        label: "compute_pipeline3094",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const array5 = new Float32Array([0.5, 1.0, 0.5, 1.0, 0.0, -1.0, -0.75, 1.0, 0.0, 0.25, -0.5, -0.75, 0.25, 0.5, 0.25, -0.75, 1.0, 0.75, -1.0, 0.0, -1.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.75, -0.5, 0.5, -0.25, -0.75, 0.25, 1.0, 0.5, 1.0, 1.0, 1.0, -1.0, -0.75, 1.0, -0.25, 0.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.75, 1.0, 0.5, 0.5, 0.0, -0.5, 0.0, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, 0.25, 0.5, -0.25, -0.75, 1.0, -0.75, 0.25, -0.25, 0.5, -0.5, 0.25, 1.0, -0.25, 1.0, 1.0, -0.5, -0.5, -0.25, 0.0, -0.25, -0.75, 0.75, 0.0, -0.5, 0.5, 1.0, -0.25, 0.0, 0.5, 0.75, 0.75, 1.0, -0.25, 1.0, 0.75, 0.5, -0.25, -0.25, 0.5, 0.75, ]);
    const compute_pipeline3095 = device30.createComputePipeline({
        label: "compute_pipeline3095",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3096 = device30.createComputePipeline({
        label: "compute_pipeline3096",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline3097 = device30.createComputePipeline({
        label: "compute_pipeline3097",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3098 = device30.createComputePipeline({
        label: "compute_pipeline3098",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    const compute_pipeline3099 = device30.createComputePipeline({
        label: "compute_pipeline3099",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const compute_pipeline30100 = device30.createComputePipeline({
        label: "compute_pipeline30100",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30101 = device30.createComputePipeline({
        label: "compute_pipeline30101",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30102 = device30.createComputePipeline({
        label: "compute_pipeline30102",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline30103 = device30.createComputePipeline({
        label: "compute_pipeline30103",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query304.destroy()
    const compute_pipeline30104 = device30.createComputePipeline({
        label: "compute_pipeline30104",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30105 = device30.createComputePipeline({
        label: "compute_pipeline30105",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30106 = device30.createComputePipeline({
        label: "compute_pipeline30106",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    command_encoder603.insertDebugMarker("mymarker");
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline30107 = device30.createComputePipeline({
        label: "compute_pipeline30107",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline30108 = device30.createComputePipeline({
        label: "compute_pipeline30108",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30109 = device30.createComputePipeline({
        label: "compute_pipeline30109",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    buffer307.destroy()
    const compute_pipeline30110 = device30.createComputePipeline({
        label: "compute_pipeline30110",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    query601.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline30111 = device30.createComputePipeline({
        label: "compute_pipeline30111",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline30112 = device30.createComputePipeline({
        label: "compute_pipeline30112",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    query303.destroy()
    const compute_pipeline30113 = device30.createComputePipeline({
        label: "compute_pipeline30113",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline30114 = device30.createComputePipeline({
        label: "compute_pipeline30114",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline30115 = device30.createComputePipeline({
        label: "compute_pipeline30115",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const compute_pipeline30116 = device30.createComputePipeline({
        label: "compute_pipeline30116",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline30117 = device30.createComputePipeline({
        label: "compute_pipeline30117",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    buffer306.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline30118 = device30.createComputePipeline({
        label: "compute_pipeline30118",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline30119 = device30.createComputePipeline({
        label: "compute_pipeline30119",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30120 = device30.createComputePipeline({
        label: "compute_pipeline30120",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const compute_pipeline30121 = device30.createComputePipeline({
        label: "compute_pipeline30121",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline30122 = device30.createComputePipeline({
        label: "compute_pipeline30122",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline30123 = device30.createComputePipeline({
        label: "compute_pipeline30123",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline30124 = device30.createComputePipeline({
        label: "compute_pipeline30124",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30125 = device30.createComputePipeline({
        label: "compute_pipeline30125",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30126 = device30.createComputePipeline({
        label: "compute_pipeline30126",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30127 = device30.createComputePipeline({
        label: "compute_pipeline30127",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline30128 = device30.createComputePipeline({
        label: "compute_pipeline30128",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30129 = device30.createComputePipeline({
        label: "compute_pipeline30129",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline30130 = device30.createComputePipeline({
        label: "compute_pipeline30130",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pipeline30131 = device30.createComputePipeline({
        label: "compute_pipeline30131",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30132 = device30.createComputePipeline({
        label: "compute_pipeline30132",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30133 = device30.createComputePipeline({
        label: "compute_pipeline30133",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query300.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const compute_pipeline30134 = device30.createComputePipeline({
        label: "compute_pipeline30134",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_buffer605 = command_encoder605.finish();
    render_bundle_encoder602.insertDebugMarker("marker");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pipeline30135 = device30.createComputePipeline({
        label: "compute_pipeline30135",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline30136 = device30.createComputePipeline({
        label: "compute_pipeline30136",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30137 = device30.createComputePipeline({
        label: "compute_pipeline30137",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30138 = device30.createComputePipeline({
        label: "compute_pipeline30138",
        layout: pipeline_layout3018,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline30139 = device30.createComputePipeline({
        label: "compute_pipeline30139",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline30140 = device30.createComputePipeline({
        label: "compute_pipeline30140",
        layout: pipeline_layout3020,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const array6 = new Float32Array([-0.5, -0.5, -0.25, 0.25, -0.5, 1.0, 1.0, 0.25, -1.0, 0.25, -0.5, -1.0, 1.0, 0.5, -0.25, -0.25, 0.75, 0.0, -1.0, 0.5, 0.25, 0.5, -1.0, -0.25, 0.75, -0.5, 1.0, -0.25, -0.25, -0.75, 0.25, -1.0, 0.0, -1.0, 0.25, 0.0, 0.75, 0.25, 0.5, -0.75, 0.5, 1.0, -1.0, 0.75, 0.0, 1.0, 0.25, 0.0, 1.0, 0.75, -0.25, -1.0, 0.0, -0.25, -0.25, 0.5, 0.75, 0.75, -0.5, -0.25, -0.5, 0.5, -0.5, 0.0, -1.0, -0.25, -0.75, -0.25, 0.5, 0.0, 0.0, -1.0, 1.0, 0.0, -0.5, 0.25, 0.0, -0.75, -0.25, 0.0, -0.5, 0.0, 0.25, 0.75, -0.75, 0.75, 0.0, -0.5, 0.0, 0.5, -0.25, 0.25, -0.75, -1.0, 0.75, -0.25, -0.75, -0.25, -0.5, 0.25, ]);
    const compute_pipeline30141 = device30.createComputePipeline({
        label: "compute_pipeline30141",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30142 = device30.createComputePipeline({
        label: "compute_pipeline30142",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30143 = device30.createComputePipeline({
        label: "compute_pipeline30143",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_buffer700 = command_encoder700.finish();
    query302.destroy()
    const compute_pipeline30144 = device30.createComputePipeline({
        label: "compute_pipeline30144",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    query300.destroy()
    const compute_pipeline30145 = device30.createComputePipeline({
        label: "compute_pipeline30145",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline30146 = device30.createComputePipeline({
        label: "compute_pipeline30146",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device70.queue.submit([command_buffer700, ]);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
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
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    const command_buffer603 = command_encoder603.finish();
    device60.queue.submit([command_buffer600, command_buffer603, command_buffer604, ]);
    device60.queue.submit([command_buffer605, ]);
}