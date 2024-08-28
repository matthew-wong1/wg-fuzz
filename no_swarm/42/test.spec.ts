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
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array0 = new Float32Array([-0.5, -0.5, -0.5, 0.75, -0.25, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, 0.25, 0.75, -0.75, -0.5, -1.0, 0.25, 0.5, 0.75, -1.0, -0.25, 1.0, 0.75, -0.25, -0.25, -1.0, 0.25, 0.25, 0.75, 0.0, 0.0, -1.0, -0.5, -0.75, -1.0, 1.0, 0.0, 0.25, 0.5, -1.0, 0.0, -1.0, 0.0, 0.0, 0.0, -0.5, 1.0, -0.25, 1.0, 0.5, 0.25, -0.25, 1.0, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, 0.0, 0.25, -0.75, 0.0, 1.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.0, -1.0, -0.75, -0.75, 0.25, 0.5, -0.5, -0.75, 0.5, -1.0, -0.75, -0.5, -1.0, 0.75, -1.0, -0.5, 0.0, 0.5, -0.25, 0.75, -1.0, -0.5, 0.25, 0.5, -0.5, -0.5, -0.75, -1.0, 0.5, -0.75, 0.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("internal");
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
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const array1 = new Float32Array([1.0, 0.75, -1.0, 0.75, -0.75, 0.5, 0.25, 0.5, -0.75, 0.0, -1.0, 0.75, -0.5, -1.0, 0.5, -0.75, 1.0, -0.75, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.75, -1.0, 0.0, -1.0, 0.75, -0.75, -0.5, 0.5, -0.25, -0.5, 0.25, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, -0.5, 0.5, -0.5, 1.0, 1.0, 0.0, 0.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, -1.0, 1.0, -0.75, -0.25, 0.5, 0.75, -0.75, 0.75, -0.75, -0.25, 0.75, 0.25, -0.75, 0.5, -0.5, -0.75, 0.75, -1.0, -0.75, 1.0, 1.0, -0.75, 0.25, -0.5, -1.0, -0.75, -0.25, -0.25, -0.25, -0.75, -0.25, 1.0, 0.75, 0.0, -0.75, 0.25, 1.0, -0.25, -0.75, 0.25, 1.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device40.pushErrorScope("internal");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const array2 = new Float32Array([-0.75, -1.0, 0.0, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, 1.0, 0.75, -0.25, 1.0, -0.25, -0.25, 0.5, -1.0, -1.0, -0.5, 1.0, -0.75, 0.5, 1.0, 0.75, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 1.0, 0.75, 0.75, 0.75, 0.0, 0.25, -0.25, 0.0, 0.25, 0.25, 0.75, -1.0, -0.75, 0.5, 1.0, -0.75, -0.75, 0.25, -0.75, 0.5, -1.0, 1.0, 0.0, 0.0, 0.75, -0.25, -0.5, 0.25, 0.0, -0.5, -0.5, 0.25, -1.0, -0.25, 1.0, -0.5, -0.75, -0.75, 0.75, 0.5, 0.75, 0.5, -0.75, 0.0, -1.0, 0.5, -1.0, -0.75, -0.5, 1.0, -0.5, -1.0, 0.25, 1.0, -1.0, -1.0, 0.25, -0.75, -0.25, 0.0, 0.75, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, -0.75, 0.75, -0.5, ]);
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query300.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    device40.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const array3 = new Float32Array([0.25, -0.75, -0.25, 0.75, -0.5, -1.0, 0.5, -0.25, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.0, -0.75, 0.25, 0.5, 0.0, 0.0, 0.75, 0.25, -0.25, -1.0, -1.0, 0.5, 1.0, 1.0, 0.0, 0.0, -1.0, 0.25, -0.75, 1.0, -0.5, -1.0, 0.25, 1.0, -0.75, 0.75, 0.75, 0.25, 0.75, -0.5, 0.0, 0.5, -0.25, 1.0, 0.0, -0.5, 0.25, -0.25, 0.0, 0.0, -0.75, 0.75, 0.75, 0.25, 0.0, 1.0, 1.0, -0.5, -0.25, -0.75, 0.5, -0.75, 0.0, -0.75, 0.5, -0.75, -1.0, 0.75, -0.5, 0.0, 1.0, 1.0, 1.0, 0.25, -0.25, -0.5, 0.75, -1.0, -0.25, 0.75, 0.5, 0.0, -0.75, -1.0, 0.75, 1.0, -0.5, -0.5, 1.0, 0.75, 0.25, -0.75, -0.75, 1.0, -0.25, 0.5, ]);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer500.destroy()
    
    query300.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture300.destroy();
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    query300.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
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
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    texture402.destroy();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query301.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
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
    const array4 = new Float32Array([0.0, -0.75, 1.0, -0.5, 0.75, 0.5, 0.25, -1.0, 1.0, -0.5, -0.25, -1.0, 1.0, 0.0, 0.5, 1.0, -0.5, 0.0, 0.25, -0.75, -0.5, -0.75, 0.25, 0.75, 0.75, -0.75, 0.25, 0.5, 0.0, -0.25, -0.5, 1.0, 0.0, 0.25, 0.25, -1.0, -0.75, -0.25, 0.25, -0.75, -0.75, -0.5, -1.0, 0.5, 1.0, 0.25, 0.0, 0.0, 0.75, 0.5, 0.5, 0.25, -0.25, 0.0, 0.75, 0.25, 0.0, -0.5, 0.25, -1.0, -0.25, 1.0, 0.5, -0.25, -0.75, -1.0, -0.25, -0.75, 0.0, -0.5, -1.0, 0.0, -0.5, -0.25, -0.75, 0.5, -0.25, -0.25, 0.25, 0.25, -0.75, -0.25, -0.5, 1.0, 0.75, 1.0, -0.75, -0.75, -1.0, 0.25, 0.0, -0.25, 0.75, 0.75, 0.0, -1.0, -0.25, 1.0, 0.0, 0.25, ]);
    
    device50.pushErrorScope("out-of-memory");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    render_bundle_encoder501.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    buffer400.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query401.destroy()
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query300.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder5000.popDebugGroup()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query401.destroy()
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const array5 = new Float32Array([1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.75, 0.5, 1.0, -0.25, -0.25, -1.0, 0.0, 0.25, -1.0, 0.5, -1.0, 0.25, -1.0, 0.5, 0.25, 0.5, -1.0, -1.0, 1.0, -0.5, 0.75, 0.75, -1.0, -0.25, 0.75, -0.25, -0.25, 0.75, -1.0, 0.0, 0.25, 1.0, 0.5, 0.0, 1.0, -1.0, -1.0, 0.0, -0.25, 1.0, 0.0, 0.75, 0.0, -0.5, 1.0, 1.0, -1.0, 0.5, -0.5, 0.25, -1.0, 0.75, 0.0, -0.25, -0.5, 0.25, 1.0, 1.0, 0.0, 0.25, -0.25, 1.0, 0.75, 1.0, 0.5, 0.75, 0.5, 0.75, -0.75, -0.25, 0.75, 0.75, 0.75, 0.0, -1.0, 0.25, 0.25, -0.75, -0.25, -0.25, 0.75, -0.5, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, -1.0, -0.25, -0.5, 1.0, 0.5, 0.5, ]);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.popDebugGroup();
    texture400.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder401.popDebugGroup();
    
    
    
    
    
    
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    query300.destroy()
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    buffer502.destroy()
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
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
    texture401.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    
    texture501.destroy();
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("out-of-memory");
    texture500.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    device60.pushErrorScope("internal");
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
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
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    query400.destroy()
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query401.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query300.destroy()
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    query302.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const command_buffer701 = command_encoder701.finish();
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    command_encoder600.pushDebugGroup("mygroupmarker")
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    texture700.destroy();
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const array6 = new Float32Array([0.0, 0.5, -0.75, 1.0, 0.5, -0.75, -0.75, 0.5, 0.75, -1.0, 0.0, 0.0, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, 0.75, 0.5, 0.5, 0.0, 0.0, -0.75, 0.25, 0.0, -0.75, -1.0, -0.75, 0.25, -0.5, -0.5, 0.5, -0.5, 0.0, 0.5, 0.0, 0.0, -1.0, 0.25, 1.0, -0.75, 0.0, 0.0, -0.75, 0.0, -0.25, -1.0, -1.0, 0.5, -0.25, -0.25, 0.5, -0.25, 0.0, 0.25, 0.0, 0.0, -0.5, 0.75, 0.75, 0.5, 0.75, 0.75, -0.75, 0.0, -0.25, 0.0, -1.0, -0.5, 0.5, 0.75, 1.0, 0.5, 0.0, -0.75, -0.75, 0.0, 0.0, 0.0, -0.25, -0.5, 0.25, 0.5, -0.75, -0.5, 0.25, 0.25, 0.5, 0.75, 0.5, -0.75, 0.0, -1.0, -0.25, 0.25, -0.5, 0.0, 0.25, 0.0, ]);
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_buffer300 = command_encoder300.finish();
    device70.queue.submit([command_buffer701, ]);
    
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture403 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    query303.destroy()
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
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
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    command_encoder600.insertDebugMarker("mymarker");
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer600.destroy()
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    query403.destroy()
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    buffer507.destroy()
    
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout305]
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer700.destroy()
    query400.destroy()
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    buffer1000.destroy()
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device70.pushErrorScope("out-of-memory");
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("internal");
    compute_pass_encoder5010.insertDebugMarker("marker")
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder1100.insertDebugMarker("mymarker");
    
    device30.queue.submit([command_buffer300, ]);
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    buffer506.destroy()
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    command_encoder1100.insertDebugMarker("mymarker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.pushErrorScope("internal");
    buffer508.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder700.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer800 = command_encoder800.finish();
    device80.queue.submit([command_buffer800, ]);
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer600, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1100 = command_encoder1100.finish();
    compute_pass_encoder5000.popDebugGroup()
    device110.queue.submit([command_buffer1100, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer700 = command_encoder700.finish();
}