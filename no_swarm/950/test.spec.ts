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
    
    
    
    
    
    
    const array0 = new Float32Array([-0.25, -0.5, -0.5, -0.5, 0.25, -1.0, 0.75, -0.25, -1.0, -1.0, -0.25, 1.0, 0.0, 0.5, 1.0, 0.25, -0.75, 0.5, 0.5, -0.25, 1.0, 1.0, -0.75, -0.75, -0.75, 1.0, 0.75, 0.0, -0.25, -0.25, -0.75, 0.5, 0.5, 1.0, -0.25, -0.5, 0.0, 0.5, 0.25, -0.75, 1.0, -1.0, 0.25, -0.5, 1.0, -0.5, 0.25, -0.5, 0.25, 1.0, 1.0, -0.75, 0.25, -1.0, -0.25, -0.25, 1.0, -0.75, 1.0, 0.5, 0.5, -0.75, 0.25, 0.25, 0.75, 1.0, 0.25, 0.75, 0.0, 0.75, -1.0, 0.0, -0.5, 0.75, 0.25, 0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.25, -1.0, 0.5, 1.0, 1.0, -0.5, -0.75, -0.75, 1.0, -0.75, 0.25, -0.75, 1.0, -0.5, -0.25, 0.5, 0.25, 1.0, -0.25, ]);
    
    
    const array1 = new Float32Array([-0.5, 0.75, 0.25, 0.5, 0.5, -1.0, -0.75, 1.0, -0.25, 0.75, -0.5, 0.5, -0.5, 1.0, -0.5, 1.0, -0.75, -0.25, 0.5, 0.0, 0.75, -0.75, 0.25, 0.0, -0.25, -0.5, 0.5, 0.5, 0.25, -0.25, -0.75, -0.25, -0.5, 0.75, -0.25, 1.0, 1.0, 0.25, 0.75, 1.0, -0.5, -0.25, -0.75, 0.25, -0.75, 0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -1.0, 0.25, -0.25, 1.0, 0.75, -0.75, -0.5, -0.25, -1.0, -0.25, -0.75, 0.5, -0.25, -0.75, 0.75, -0.5, 0.75, 0.25, -1.0, -1.0, 0.5, 0.0, 0.5, 0.75, -0.75, 0.25, 0.25, -1.0, 0.25, -1.0, -0.25, 0.25, 0.75, 0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 0.0, 0.75, 0.25, 0.75, 0.75, -0.75, -0.5, 0.25, 0.75, 0.5, ]);
    
    
    
    const array2 = new Float32Array([1.0, 0.75, 0.75, 0.75, -1.0, 0.75, -0.25, -0.75, -0.75, 1.0, 0.75, 0.25, 0.25, 0.5, 0.25, -0.5, 0.75, -0.25, -0.75, -1.0, -0.5, -1.0, 0.5, 1.0, -0.75, 0.5, -1.0, 0.25, 0.5, -0.5, -0.25, -1.0, -0.75, -0.75, 0.5, 1.0, 1.0, 1.0, 0.0, 0.25, 0.25, 0.5, -1.0, 0.75, -0.5, 0.0, -0.5, 1.0, 1.0, -0.5, -1.0, -0.75, -0.75, -0.25, 0.5, -0.5, 0.0, -0.25, -1.0, -1.0, 0.5, -1.0, 1.0, 0.75, 0.75, -1.0, -1.0, 0.5, 0.25, 0.75, -1.0, 0.5, 1.0, -0.5, -0.25, -0.75, 0.75, 0.25, -0.75, 0.5, -0.25, -0.75, -1.0, 1.0, -0.75, 0.0, 0.5, -0.75, 0.0, -0.75, 1.0, 0.5, 1.0, 0.0, -1.0, 1.0, 0.0, 0.75, 0.25, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("internal");
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    buffer101.destroy()
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.25, 0.0, -0.75, -0.25, 0.25, -0.75, -0.75, -0.25, -0.25, -0.75, 0.0, 0.0, 0.25, 0.75, 0.0, 0.25, -0.75, -1.0, -0.25, 0.75, 0.75, 0.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.5, 0.0, -0.25, 0.0, 1.0, 1.0, -0.75, -0.25, -0.5, 0.75, -1.0, 0.5, 0.25, 0.25, 0.0, 0.25, -0.25, 1.0, -0.25, -0.25, 1.0, -0.25, -0.75, -1.0, 0.5, -1.0, 1.0, -1.0, 1.0, -0.75, -1.0, -0.75, 0.0, 0.25, -1.0, -0.75, 0.25, 0.5, -0.75, -0.25, -0.5, -0.5, -0.75, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, -0.75, -0.5, 1.0, -0.75, 1.0, 1.0, -0.75, 0.0, 0.75, 0.5, 0.0, 0.5, -0.75, -0.75, 0.0, -0.5, 0.0, 0.75, 1.0, -0.75, 1.0, -0.5, -0.75, 0.25, ]);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query101.destroy()
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device30.queue.submit([command_buffer300, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture100.destroy();
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query102.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    command_encoder103.pushDebugGroup("mygroupmarker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer100.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder102.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    query100.destroy()
    query101.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder103.popDebugGroup()
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
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
    const array4 = new Float32Array([0.0, -0.5, 1.0, 0.0, 0.75, -1.0, -0.75, -0.25, -1.0, -1.0, 0.0, -0.25, 0.0, 0.0, 0.0, -0.5, -0.75, 0.75, 0.5, 0.75, 0.75, -1.0, 0.75, -1.0, 0.5, 0.5, 1.0, -0.5, -0.5, 0.25, -1.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.75, 0.5, -1.0, 1.0, 0.25, -0.25, 0.5, -0.5, -0.25, 0.25, -0.5, 0.5, 0.5, 0.75, -0.75, -0.5, -0.75, -0.25, -0.75, 1.0, 1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -0.25, -0.25, 0.0, 0.75, -0.5, -0.25, -0.75, 1.0, -1.0, -0.75, -0.75, -0.75, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, -0.75, 0.75, 0.75, 0.5, 0.75, 0.25, 0.0, 1.0, 0.0, -0.75, 0.75, -0.5, -0.75, 0.5, 0.5, 0.75, -0.25, -1.0, -1.0, 0.75, ]);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1020.setPipeline(compute_pipeline102);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group100);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query101.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group101);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    texture300.destroy();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    buffer103.destroy()
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
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
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    texture101.destroy();
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1050.setPipeline(compute_pipeline106);
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const array5 = new Float32Array([-1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.0, 0.5, -0.75, 0.0, 0.75, -0.25, -0.5, 0.25, 0.5, -0.5, -1.0, -0.25, -0.75, 0.0, -0.5, -1.0, -0.5, 0.5, -0.75, -0.75, 0.5, -0.25, -0.75, 0.5, 0.5, 0.0, 0.25, -0.75, 0.25, 0.75, 0.0, -0.25, -0.25, -0.75, 0.75, -0.75, -0.5, -1.0, -0.25, 1.0, 1.0, -0.5, 0.75, -0.25, -0.5, 0.25, -1.0, 0.5, -0.5, 0.0, -0.25, -0.75, -0.5, -1.0, 0.25, 1.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.75, -1.0, 1.0, -0.25, 0.0, 1.0, 0.5, 0.25, 0.75, 1.0, 0.75, -0.75, -0.25, 1.0, 0.75, 1.0, -1.0, -0.75, 1.0, 0.25, -0.75, -0.75, -0.5, -1.0, 0.0, -1.0, 0.25, 0.25, -0.75, 1.0, -0.25, 1.0, 0.25, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer107, 0);
    texture301.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query103.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
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
        occlusionQuerySet: query301
    });
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    compute_pass_encoder1060.setPipeline(compute_pipeline101);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group103);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    query300.destroy()
    buffer1010.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1060.insertDebugMarker("marker")
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    
    device30.pushErrorScope("validation");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    compute_pass_encoder1040.popDebugGroup()
    buffer301.destroy()
    
    query300.destroy()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    compute_pass_encoder1030.end();
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    command_encoder108.insertDebugMarker("mymarker");
    
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1014, 0);
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    query300.destroy()
    
    command_encoder109.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder107.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    compute_pass_encoder1080.setPipeline(compute_pipeline107);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    command_encoder103.clearBuffer(buffer107);
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    command_encoder109.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1014, 0, array0, 0, array0.length);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer1015, 0);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder107.clearBuffer(buffer1014);
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device10.pushErrorScope("validation");
    query103.destroy()
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
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
        occlusionQuerySet: query303
    });
    query102.destroy()
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline107.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group105);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    query302.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer1017.destroy()
    buffer106.destroy()
    
    compute_pass_encoder1050.dispatchWorkgroups(100);
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    command_encoder107.clearBuffer(buffer107);
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder100.setPipeline(render_pipeline102);
    buffer1013.destroy()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    texture302.destroy();
    texture102.destroy();
    const uint32_1080 = new Uint32Array(3);

    uint32_1080[0] = 100;
    uint32_1080[1] = 1;
    uint32_1080[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1080, 0, uint32_1080.length);

    compute_pass_encoder1080.dispatchWorkgroupsIndirect(buffer1018, 0);
    buffer1015.destroy()
    compute_pass_encoder1000.popDebugGroup()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.beginOcclusionQuery(0)
    
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    
    compute_pass_encoder1070.setPipeline(compute_pipeline1021);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    texture303.destroy();
    command_encoder109.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    command_encoder109.clearBuffer(buffer1014);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer104.destroy()
    device10.queue.submit([command_buffer101, ]);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder109.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    command_encoder109.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder109.insertDebugMarker("mymarker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    command_encoder109.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    texture103.destroy();
    device10.queue.writeBuffer(buffer1018, 0, array3, 0, array3.length);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder109.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    query104.destroy()
    const compute_pass_encoder1031 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1031" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder1070.insertDebugMarker("marker")
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    device10.queue.writeBuffer(buffer1018, 0, array4, 0, array4.length);
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder1050.insertDebugMarker("marker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1018, 0, array1, 0, array1.length);
    render_pass_encoder3030.endOcclusionQuery()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1031.setPipeline(compute_pipeline101);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1031.setBindGroup(0, bind_group106);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    query302.destroy()
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    buffer109.destroy()
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder3030.executeBundles([])
    
    
    command_encoder109.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    texture104.destroy();
    render_pass_encoder3020.setStencilReference(1);
    command_encoder109.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    
    command_encoder109.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    command_encoder109.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    buffer107.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout107,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const uint32_1031 = new Uint32Array(3);

    uint32_1031[0] = 100;
    uint32_1031[1] = 1;
    uint32_1031[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1031, 0, uint32_1031.length);

    compute_pass_encoder1031.dispatchWorkgroupsIndirect(buffer1021, 0);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder109.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    buffer1012.destroy()
    buffer300.destroy()
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query105
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    buffer1020.destroy()
    buffer105.destroy()
    
    render_pass_encoder3020.setStencilReference(1);
    query304.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    compute_pass_encoder1031.end();
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout105,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout108,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    compute_pass_encoder1040.popDebugGroup()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1021, 0, array5, 0, array5.length);
    render_pass_encoder3020.popDebugGroup();
    query301.destroy()
    render_pass_encoder3020.setPipeline(render_pipeline301);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline1021.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1070.setBindGroup(0, bind_group107);
    render_pass_encoder1090.setPipeline(render_pipeline101);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1060.popDebugGroup()
    compute_pass_encoder1040.end();
    compute_pass_encoder1060.end();
    command_encoder103.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder1020.end();
    compute_pass_encoder1050.end();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1080.popDebugGroup()
    const uint32_1070 = new Uint32Array(3);

    uint32_1070[0] = 100;
    uint32_1070[1] = 1;
    uint32_1070[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1070, 0, uint32_1070.length);

    compute_pass_encoder1070.dispatchWorkgroupsIndirect(buffer1024, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3030.setPipeline(render_pipeline300);
    compute_pass_encoder1080.end();
    render_pass_encoder3030.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    const command_buffer108 = command_encoder108.finish();
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

    render_pass_encoder3030.setBindGroup(0, bind_group300);
    const command_buffer105 = command_encoder105.finish();
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    render_pass_encoder1090.setBindGroup(0, bind_group109);
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder1000.dispatchWorkgroups(100);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer103 = command_encoder103.finish();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group302);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, command_buffer105, command_buffer108, ]);
    compute_pass_encoder1070.end();
    device10.queue.submit([command_buffer106, ]);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer308, 0);
    command_encoder107.popDebugGroup()
    const command_buffer107 = command_encoder107.finish();
    compute_pass_encoder3010.end();
    const command_buffer301 = command_encoder301.finish();
    device10.queue.submit([command_buffer107, ]);
}