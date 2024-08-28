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
    const array0 = new Float32Array([1.0, 0.25, -0.25, -0.25, 1.0, -1.0, -0.75, 0.0, -0.5, 0.25, 0.5, 0.5, -0.75, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -0.75, -1.0, -0.75, 1.0, -0.5, 0.0, 0.75, -1.0, -1.0, 0.75, 1.0, 0.25, 1.0, -0.25, -1.0, 1.0, 1.0, 0.0, -0.5, -0.5, -1.0, 0.0, -1.0, 0.75, -0.5, 0.5, -0.25, -0.25, 0.0, 0.75, 0.75, 0.25, 0.75, 1.0, 0.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.25, 0.5, 0.5, 0.25, -0.25, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, -0.75, 0.5, 1.0, 0.5, 0.75, -0.75, -0.25, 1.0, 0.0, 1.0, -1.0, 1.0, 0.5, 0.0, -0.25, 1.0, 1.0, -0.5, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, 0.75, 0.25, 0.5, -0.5, ]);
    
    
    
    
    
    const array1 = new Float32Array([-0.75, 0.25, -0.5, -1.0, -0.5, 0.75, 0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 0.5, -0.75, 0.25, -0.5, 1.0, 0.75, -0.75, -1.0, 0.0, -0.5, -0.75, 0.5, 0.25, -0.25, -0.5, 0.0, -0.75, 0.0, 1.0, 1.0, -0.75, 0.75, 0.0, 0.25, -0.75, 0.75, -0.5, 0.75, 0.25, 0.75, -0.25, -0.5, -0.75, -0.25, 0.75, -0.5, -0.25, 0.75, 0.75, 0.0, 0.25, 0.5, 0.25, -0.5, 0.25, 0.25, -0.25, -0.5, -0.75, -0.5, 0.25, -0.5, -1.0, -0.75, -0.75, -0.75, -0.75, 0.75, -0.5, 0.5, 0.75, 0.0, 0.5, -0.75, -0.5, -0.75, -0.25, -0.25, 0.5, -0.5, 0.5, 1.0, -0.75, -0.75, 0.5, 0.75, 0.25, -0.5, 0.5, 0.75, -0.5, 0.25, -0.75, -0.5, 0.0, -0.75, 1.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    const array2 = new Float32Array([-1.0, 0.25, 0.0, 0.0, -0.25, 1.0, -1.0, -0.5, 1.0, 0.5, 0.5, -0.25, -0.25, 0.5, 0.5, 0.0, 1.0, 0.0, -0.75, 0.25, -0.25, 0.75, 0.75, -0.25, 0.5, 0.75, 0.5, -0.25, -1.0, 0.25, 0.25, -1.0, 0.0, 1.0, 0.5, -0.5, 0.0, 0.25, 0.75, 1.0, 0.75, 0.25, 1.0, 0.5, 1.0, 0.0, 0.25, -1.0, 0.0, -0.5, 0.75, 0.0, -0.25, 0.0, 0.0, 0.25, 0.25, -0.25, -0.25, 0.25, 0.5, -1.0, 0.5, 0.75, 0.75, -0.25, 0.75, -0.75, 1.0, -1.0, 0.75, -0.75, 1.0, 0.0, 0.25, 0.75, 0.0, -0.25, 0.75, -1.0, 1.0, 0.5, -1.0, 1.0, -0.5, -0.5, 0.75, 0.25, 1.0, -0.75, -0.25, -1.0, 0.5, -0.5, 1.0, -0.75, 0.5, 0.75, 1.0, 0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array3 = new Float32Array([0.0, 1.0, 0.75, 0.25, -1.0, 0.5, 0.25, 0.25, -0.5, 0.5, 0.0, 0.0, 0.75, 0.5, 0.75, 0.5, -0.25, -0.5, -0.25, -0.75, -0.25, 0.75, 0.75, -0.75, -0.75, -0.25, 0.5, 1.0, 1.0, 0.25, 0.25, 0.0, 0.5, -0.75, 0.75, -0.25, 0.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.25, -1.0, 1.0, 0.5, 0.0, 0.25, 0.25, 0.0, -1.0, -1.0, -1.0, 0.25, 0.5, -0.5, 0.5, -0.5, 0.5, -0.5, 1.0, -0.75, -0.25, -0.75, 1.0, 0.0, 0.5, 0.5, -0.5, 0.0, -0.75, -1.0, -1.0, 0.25, 0.0, 0.75, -0.25, 0.5, -1.0, -0.75, 0.0, -0.25, -0.5, -1.0, 0.5, 0.25, 1.0, -0.25, 1.0, 0.75, 0.5, 1.0, -0.25, 0.75, 0.0, 0.0, 0.25, 0.25, 0.5, 0.25, ]);
    
    const array4 = new Float32Array([0.0, 1.0, 0.25, 0.0, 0.5, 0.0, 0.25, -0.25, -0.25, -1.0, 0.25, -0.75, 0.0, 0.0, -0.25, 1.0, -0.25, -1.0, -0.5, 0.25, 0.5, -0.5, -0.75, -0.5, -1.0, 0.75, 0.5, -0.5, 0.75, -0.75, 0.25, 0.0, 0.25, -0.25, 0.25, -1.0, 0.5, 0.0, 1.0, -0.75, 0.5, -0.25, 0.75, 0.75, -0.25, 0.0, 1.0, 0.5, 0.5, 0.0, 0.5, 0.0, 0.75, 1.0, -0.75, -1.0, -0.5, 0.5, 0.0, 0.0, -0.75, 0.25, 0.5, -0.25, -0.5, 0.25, 0.25, 0.75, 0.0, 0.0, 0.5, -0.5, -0.75, 0.75, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, -1.0, -0.25, -0.5, 0.75, 0.75, -1.0, -1.0, 0.25, 1.0, 0.75, -0.5, 0.75, 0.0, -1.0, -0.5, -0.5, -1.0, -0.75, -0.25, -0.75, ]);
    
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.pushErrorScope("validation");
    const array5 = new Float32Array([0.0, -0.25, 0.5, 1.0, 0.75, -0.5, 0.25, 0.5, 1.0, -1.0, -0.5, 0.25, 0.5, 0.0, 0.25, 0.75, 1.0, 1.0, 0.75, 0.25, 1.0, 0.75, -0.75, -0.25, -0.25, -0.75, 0.0, -0.25, 1.0, 0.25, 0.0, 0.5, -0.5, 0.5, 0.25, 0.75, -0.5, 0.25, -0.5, -0.25, -0.5, 0.25, -0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -0.25, -1.0, 1.0, -1.0, 0.25, 0.0, 0.0, 0.25, -0.5, -0.5, 0.0, -1.0, -0.25, 1.0, -0.25, 0.25, -0.5, 1.0, -0.5, -1.0, 0.75, -0.75, 1.0, 0.0, -1.0, 0.75, 1.0, 0.0, -0.25, 0.75, 0.5, 0.25, -0.25, 0.25, 0.75, -0.75, 0.0, 0.5, -1.0, 0.25, 0.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.0, 0.75, 0.25, 1.0, 0.75, 0.75, ]);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture200.destroy();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query200.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_buffer300 = command_encoder300.finish();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array6 = new Float32Array([0.5, -1.0, 1.0, -0.25, -1.0, 0.75, 0.0, -0.5, 0.75, 1.0, 0.25, -0.25, 0.5, 0.5, 0.25, -1.0, -0.5, -0.5, -0.75, 1.0, -0.25, -1.0, -0.5, -0.25, 0.25, -1.0, 0.75, 1.0, 0.75, 0.25, 0.5, 1.0, 0.0, 0.25, -0.25, -1.0, -1.0, -0.25, 0.0, 0.5, -0.75, 0.25, -0.75, 1.0, 0.25, -0.5, 1.0, 0.75, -0.25, -0.75, 0.25, 0.0, 1.0, -0.5, 0.75, -0.5, -1.0, 0.25, 0.25, -0.75, 0.5, 0.25, 0.25, 0.75, -0.5, 0.0, 0.25, 0.5, 0.0, 1.0, -0.75, -0.25, 0.0, -0.25, -0.25, -0.5, -0.5, 0.5, 0.75, -0.75, 0.5, -0.25, -0.25, -0.75, 0.75, -0.25, 1.0, 0.5, 0.0, 0.0, -0.75, 0.5, 0.5, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, ]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    buffer200.destroy()
    
    
    
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
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.insertDebugMarker("mymarker");
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder201.insertDebugMarker("mymarker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query201.destroy()
    
    buffer300.destroy()
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    render_bundle_encoder300.popDebugGroup();
    
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.25, -1.0, -0.5, 0.5, 0.5, 0.75, 0.5, 0.25, -0.75, 0.5, 0.75, 0.75, -0.75, -0.5, 1.0, 0.75, -0.75, 0.75, 0.25, 0.0, -1.0, -0.5, 1.0, -0.5, 0.75, 0.75, -0.75, 0.0, 1.0, -0.25, -1.0, 0.5, 0.0, -0.75, 0.5, 0.75, 0.75, 0.75, -0.5, -0.5, 0.5, 1.0, 1.0, 0.25, -1.0, 1.0, -0.25, -0.5, -0.25, 0.25, -1.0, -0.75, 0.5, 0.75, 0.0, -0.25, 0.25, 0.0, -1.0, 0.0, -0.75, 0.0, -1.0, -0.25, 0.25, 0.25, -1.0, -0.25, -1.0, -0.75, -1.0, 0.75, 0.25, -0.5, -0.75, -1.0, 0.5, -0.75, 0.75, 0.5, 0.25, 0.0, -1.0, -0.75, 0.0, -1.0, -0.75, -0.5, -0.25, 1.0, 0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 0.5, -0.5, 0.75, -0.75, ]);
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline301);
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query300.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer302 = command_encoder302.finish();
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder201.insertDebugMarker("mymarker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture300.destroy();
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
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
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    device50.destroy();
    device20.pushErrorScope("internal");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    query301.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder303.clearBuffer(buffer301);
    
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const array8 = new Float32Array([0.0, 1.0, 0.75, -0.75, -0.5, 1.0, -1.0, -1.0, -1.0, 0.5, -0.75, 0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.25, 0.5, -0.5, -0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.5, -0.75, 1.0, -0.5, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, -0.25, -1.0, -1.0, 0.0, -0.25, 0.75, -1.0, -1.0, 1.0, 0.0, -1.0, -0.25, 1.0, 0.75, 0.0, 0.25, 1.0, 0.25, 0.75, 0.75, -0.25, 0.75, -1.0, 0.75, 0.75, -0.25, -0.75, 0.75, 0.75, 0.25, -0.25, -0.25, 0.5, 1.0, -0.5, 0.0, 0.0, 0.5, 0.5, -0.75, -0.75, -1.0, -0.25, 0.25, 0.5, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.5, -1.0, -0.75, -0.5, -0.25, -1.0, -1.0, 0.0, 0.0, 0.25, -0.5, 0.5, -0.75, ]);
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
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
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer302.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder303.insertDebugMarker("mymarker");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    query202.destroy()
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline3010);
    
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    compute_pass_encoder3030.popDebugGroup()
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
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    query302.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
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
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer305, 0);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query201.destroy()
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    
    buffer201.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    query203.destroy()
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
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
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline3010.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group301);
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    command_encoder201.popDebugGroup()
    
    device20.pushErrorScope("internal");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    buffer305.destroy()
    query301.destroy()
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    query303.destroy()
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture301.destroy();
    compute_pass_encoder3010.end();
    command_encoder201.insertDebugMarker("mymarker");
    query201.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout309,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    const array9 = new Float32Array([0.0, -0.25, -0.25, 0.25, 0.5, 0.0, -0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 1.0, 1.0, 0.0, -0.25, -0.75, 0.75, 0.0, -0.5, 1.0, 1.0, 0.25, -0.25, -0.75, 0.5, -0.25, 0.25, 1.0, 0.25, -0.5, -0.5, 0.5, 0.25, -0.5, 0.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, 0.75, 0.5, -0.25, 0.25, 0.75, -0.25, -0.75, 0.75, 0.75, 0.0, -0.5, 0.75, 0.0, 0.0, -0.25, 0.5, -1.0, 0.5, 0.5, -0.5, 0.25, 0.75, 0.75, 0.25, -1.0, 0.5, 0.5, -0.25, -0.25, 0.0, 0.5, -1.0, 1.0, -1.0, -0.25, -0.75, -0.25, -0.5, 0.25, 0.5, -1.0, 0.75, -0.25, 0.5, -1.0, -0.5, -1.0, -0.25, -0.25, 0.25, 0.5, -0.5, -1.0, -0.25, 0.75, -0.5, 0.0, -0.25, ]);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3040.insertDebugMarker("marker");
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.executeBundles([])
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    query300.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    
    render_pass_encoder3010.setPipeline(render_pipeline300);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setPipeline(render_pipeline303);
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
    
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer300, ]);
    device20.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout302,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout306,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3011, 0);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    buffer308.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    
    
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout303,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3050.setPipeline(render_pipeline306);
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout303,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query205.destroy()
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    query203.destroy()
    texture303.destroy();
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group303);
    command_encoder201.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder3030.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group304);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3030.end();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group305);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    command_encoder202.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer202, ]);
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
}