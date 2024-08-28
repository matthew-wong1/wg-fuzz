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
    
    
    
    
    
    const array0 = new Float32Array([0.25, 1.0, -0.25, -0.75, -0.25, 0.25, 0.75, -0.5, -0.75, 0.75, 0.75, -0.5, 0.5, 0.25, -0.75, 0.5, 0.0, -1.0, 0.0, 0.0, -0.75, 0.25, 0.5, 0.25, 0.75, -0.25, -0.5, -0.75, -0.75, 1.0, 0.75, 1.0, 0.75, -0.5, 0.0, -0.75, -0.75, 0.75, -0.25, 1.0, 0.0, -0.25, 0.25, -0.75, 0.5, -1.0, -1.0, 0.0, -0.75, 0.0, -0.75, 0.25, 0.75, 0.0, -1.0, 0.0, 0.5, -0.5, 0.5, 0.0, 0.5, -1.0, 0.75, 0.25, 0.75, 0.75, -0.5, -0.5, -0.75, -0.5, 0.75, 1.0, -0.5, 1.0, 0.5, 1.0, 1.0, -1.0, -1.0, -0.5, 0.5, -0.5, 0.5, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, 0.75, 0.25, 0.0, -1.0, -0.5, 0.75, -0.5, 0.0, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer001.destroy()
    const array1 = new Float32Array([1.0, -1.0, -0.5, -1.0, 0.0, -0.5, 0.5, 0.5, 0.75, 0.5, 1.0, 1.0, -0.75, 1.0, 1.0, -1.0, -0.5, -1.0, 0.75, 1.0, -1.0, -0.25, 0.0, 0.25, 0.5, -0.25, 0.5, -1.0, -0.75, 0.5, 0.0, -0.25, 0.25, -1.0, -0.25, 0.0, -1.0, -0.5, 0.25, 0.25, -1.0, 0.5, 0.75, 1.0, 0.25, -0.75, -1.0, -1.0, 0.5, -0.25, 0.5, 0.5, 0.5, 0.0, 0.0, 0.75, -1.0, -0.25, 0.5, -0.75, -0.75, 0.5, 0.75, -0.5, -0.75, 0.0, 0.75, 0.0, 0.0, 1.0, 0.25, 0.0, -1.0, 1.0, -1.0, 0.5, -0.75, -1.0, -0.25, 0.75, -0.25, 0.0, 0.25, 1.0, -0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 0.75, -1.0, -1.0, 0.5, 1.0, -0.75, -0.75, 0.5, -0.25, -0.75, ]);
    const array2 = new Float32Array([-1.0, -0.25, -0.75, -0.25, -1.0, 0.25, -0.5, -0.25, 0.75, -1.0, 0.5, 0.0, -0.75, 0.0, 0.75, -1.0, 1.0, 0.5, -0.5, -0.5, -0.75, -0.25, 0.5, 0.25, -0.75, 0.0, -0.75, 0.5, -0.5, -0.5, -0.5, 0.5, -1.0, 0.75, -0.75, 0.5, 1.0, 0.75, 0.25, 0.5, -0.75, 0.75, 0.0, -1.0, 0.0, 0.25, 0.5, 0.75, -0.75, 0.5, -1.0, 0.75, -1.0, 0.5, -0.5, -0.25, 0.0, 0.0, 1.0, -0.75, 0.0, 0.5, -0.75, -0.5, -1.0, 0.25, -0.75, 0.25, 0.25, 0.25, 1.0, -0.5, 1.0, -0.25, -0.75, 0.25, 1.0, 0.5, -0.25, -0.5, -0.25, 0.25, 0.25, 0.0, -0.75, 0.75, 0.5, 0.25, -0.25, -0.75, 0.5, 0.25, -0.75, -0.25, -0.5, 0.0, 0.0, -0.5, -0.25, 0.5, ]);
    device00.destroy();
    const array3 = new Float32Array([-1.0, 0.75, -0.75, -1.0, -1.0, 0.25, 0.75, -0.5, 0.0, -0.5, -0.25, 0.0, -0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 1.0, 0.75, -0.75, 0.5, 0.0, 0.25, 0.75, 0.5, -0.5, 0.25, -1.0, 0.0, 1.0, -0.25, 0.5, 0.25, 0.5, -1.0, 1.0, 0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -0.25, 0.0, 1.0, 0.25, 0.5, -0.75, 0.5, -1.0, 0.0, -0.25, -0.75, -0.75, -0.25, 0.0, 0.25, 0.75, -0.75, 0.5, 0.75, 1.0, 1.0, 0.75, -0.25, 0.25, 0.75, -1.0, 0.25, 0.0, 0.0, 0.0, 1.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.5, 0.25, -0.5, 0.75, 0.75, 0.0, -0.5, 1.0, 1.0, -1.0, -0.75, 0.5, -0.25, 1.0, -1.0, 0.75, -0.25, -0.5, 0.75, 1.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array4 = new Float32Array([-0.5, 1.0, 0.25, -0.25, 0.0, 1.0, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, 0.75, 0.75, 0.5, -0.5, -0.5, 0.25, -0.5, -0.5, 0.25, 1.0, 0.75, 0.5, -0.25, 0.25, -0.5, 1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 1.0, 0.5, -0.5, 0.5, 0.25, -1.0, 0.25, 0.5, 1.0, 0.0, -0.25, 0.25, -0.75, -0.5, 0.25, 0.25, 0.0, 0.75, -0.5, 0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 0.5, 1.0, -0.25, 1.0, 1.0, 0.75, 1.0, 0.5, -0.25, 0.0, 0.75, -0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 0.25, 1.0, -0.75, -1.0, 0.5, 0.0, -0.5, 1.0, 0.25, 0.25, -0.25, -0.25, -0.5, 0.75, -1.0, -0.75, -0.5, -0.25, 0.0, 0.0, 0.25, -1.0, -0.25, -0.25, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    const array5 = new Float32Array([1.0, -1.0, 1.0, -0.25, 1.0, -1.0, -0.5, 0.5, 0.75, 1.0, 0.5, 0.25, 0.0, -0.75, 0.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.25, -0.75, 0.0, 0.5, 0.5, 0.25, 0.5, -0.75, 0.0, -0.5, -0.5, 1.0, 1.0, -0.75, -0.25, 0.75, 1.0, 0.5, 0.25, 0.5, 0.75, 0.75, -0.5, 0.0, 0.25, 0.5, 0.75, 0.25, 0.5, -1.0, -0.25, 0.0, -0.25, -0.75, 0.75, 0.25, 0.0, 0.75, -0.5, 0.0, 0.5, 0.25, -0.25, 1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.5, -0.5, 0.75, 1.0, -0.25, 0.25, -0.75, -0.75, 0.75, 0.25, 1.0, -1.0, -0.25, 0.75, -1.0, 0.75, -1.0, 0.5, -0.25, -0.25, -1.0, -0.75, -1.0, 0.0, -0.75, 0.25, 0.25, -0.25, 0.75, 1.0, -0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    texture100.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    buffer100.destroy()
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("validation");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array6 = new Float32Array([-0.75, -0.75, -0.75, -0.75, 0.0, 0.75, 0.25, 0.0, 0.25, 0.75, 0.0, -0.75, -0.5, -0.75, 0.5, 1.0, -0.5, -1.0, -0.25, 0.0, -0.5, -0.25, 1.0, 0.5, 0.75, 0.5, -1.0, 0.0, 0.5, -0.75, 0.5, -0.5, 0.75, 0.5, -0.25, 0.0, 0.75, 0.25, -0.25, -0.25, -0.5, 0.0, -1.0, -0.25, -0.5, 0.0, 0.25, 0.25, 1.0, 1.0, 0.5, -0.25, 0.75, 0.25, 0.0, 1.0, 0.25, -1.0, 0.0, -1.0, -0.25, 0.0, 0.5, 1.0, -0.75, -0.75, -0.75, -0.5, -1.0, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, -0.75, -0.5, 0.0, -1.0, -1.0, 0.5, -1.0, 0.25, 0.0, 0.0, -0.5, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, -0.25, 0.75, 0.0, 0.5, -0.5, ]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
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
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query302.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    query500.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder3000.popDebugGroup()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    texture301.destroy();
    buffer500.destroy()
    
    buffer300.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    query300.destroy()
    buffer301.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const array7 = new Float32Array([-0.75, 0.75, 0.0, 0.5, -0.5, 0.5, 0.75, -1.0, 0.75, 1.0, -0.75, -0.25, 0.25, 0.0, 1.0, -0.25, -1.0, 0.0, 0.75, 0.25, 1.0, 0.25, 0.5, -0.75, 0.5, -0.25, 0.5, -0.75, -0.5, -0.5, 0.5, -1.0, -0.25, 0.75, 0.0, 0.5, 0.25, 1.0, 0.5, 1.0, 0.75, 0.5, 0.0, 0.0, 0.0, 0.0, 0.75, 0.25, 1.0, 1.0, 1.0, 0.0, 1.0, 0.25, -0.25, 0.25, -1.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.0, 0.25, 0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -0.75, 1.0, -0.5, -0.25, -0.75, 0.75, 0.5, -0.75, 0.5, -0.25, 0.75, 0.25, -0.25, 0.75, -0.75, -0.75, -0.25, 0.25, 0.0, 0.25, 1.0, -0.75, 0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 0.75, 1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture501.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
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
        occlusionQuerySet: query301
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    query500.destroy()
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("internal");
    query401.destroy()
    const array8 = new Float32Array([0.5, -1.0, 0.25, 1.0, -0.5, 0.25, 0.0, 0.75, -0.75, 1.0, -0.75, -0.25, 0.75, 1.0, 0.75, 0.0, 0.25, -1.0, 1.0, 0.0, -0.75, 0.75, 1.0, 0.0, -0.25, 0.75, 1.0, -0.25, -0.25, -1.0, -0.5, -0.5, -0.25, 1.0, -1.0, 0.75, 0.25, -0.25, -0.75, 0.5, -0.75, -0.75, 0.75, 1.0, -0.75, 0.75, 1.0, 0.0, -0.5, -0.5, 0.25, -1.0, 0.25, 0.75, -0.5, 0.25, -0.75, -0.25, 0.5, -1.0, 0.25, 0.5, -1.0, -0.25, -0.5, -0.25, -0.25, 1.0, 0.25, 1.0, -1.0, 0.0, -1.0, 0.5, -0.75, -0.25, -1.0, 1.0, 1.0, -0.25, 0.25, 1.0, 0.75, -0.5, 0.75, -1.0, 0.25, 0.0, 0.75, 0.75, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, -0.75, -0.25, -0.75, 0.75, ]);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture502.destroy();
    render_pass_encoder3010.executeBundles([])
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device50.pushErrorScope("validation");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query500.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query402.destroy()
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_buffer501 = command_encoder501.finish();
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3010.executeBundles([])
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    query400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    buffer302.destroy()
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture300.destroy();
    
    render_bundle_encoder300.popDebugGroup();
    
    query302.destroy()
    device40.destroy();
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    device60.pushErrorScope("internal");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    buffer304.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer502.destroy()
    compute_pass_encoder3000.setPipeline(compute_pipeline305);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    query600.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    
    query600.destroy()
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
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
        layout: compute_pipeline305.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    command_encoder600.pushDebugGroup("mygroupmarker")
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    texture302.destroy();
    
    render_pass_encoder3010.popDebugGroup();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder3010.setStencilReference(1);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
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
        occlusionQuerySet: query302
    });
    render_pass_encoder3010.setPipeline(render_pipeline301);
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
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    query304.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    device50.pushErrorScope("validation");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
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
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setPipeline(render_pipeline301);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
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

    render_bundle_encoder302.setBindGroup(0, bind_group303);
    query301.destroy()
    
    
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
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device50.queue.submit([command_buffer501, ]);
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer308.destroy()
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    render_pass_encoder3020.popDebugGroup();
    buffer307.destroy()
    query301.destroy()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array9 = new Float32Array([-0.75, -0.25, -0.25, 0.25, 0.75, 0.0, 0.25, 0.75, -0.25, 0.25, -0.5, 0.0, -0.75, -0.25, 0.75, -1.0, -0.75, 1.0, 1.0, -1.0, -0.25, -0.5, 0.25, 1.0, 0.25, -0.5, -0.25, -0.25, 0.0, -0.75, -1.0, -0.75, -1.0, 0.25, 0.75, 0.0, 0.25, -0.5, -0.25, 0.0, -0.25, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 0.0, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, -0.25, 0.5, 0.75, 1.0, 0.25, -1.0, 0.5, 1.0, -0.5, 0.0, 0.25, 0.75, 1.0, 0.25, 0.75, -0.5, -0.25, -0.5, 0.75, 0.5, -0.25, -0.5, -0.75, -0.25, 0.75, -0.5, 0.75, -0.75, -0.75, -0.75, -1.0, -1.0, -0.5, -1.0, 1.0, -0.25, 0.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.25, 0.75, 0.0, 0.0, ]);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    device60.pushErrorScope("out-of-memory");
    buffer303.destroy()
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3020.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder5000.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setStencilReference(1);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setPipeline(render_pipeline302);
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
    
    render_bundle_encoder302.popDebugGroup();
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
    buffer306.destroy()
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder5000.insertDebugMarker("marker");
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    buffer600.destroy()
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    texture500.destroy();
    
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group304);
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    buffer305.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    query300.destroy()
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group305);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    render_bundle_encoder600.popDebugGroup();
    buffer3011.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5002,
            },
        ],
        occlusionQuerySet: query501
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.setPipeline(render_pipeline500);
    render_pass_encoder5020.setStencilReference(1);
    
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    const command_buffer602 = command_encoder602.finish();
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_pass_encoder3030.setStencilReference(1);
    
    device30.queue.writeBuffer(buffer3016, 0, array4, 0, array4.length);
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.popDebugGroup();
    buffer3016.destroy()
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    query304.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    buffer309.destroy()
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer3013.destroy()
    command_encoder601.insertDebugMarker("mymarker");
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

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
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
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    buffer504.destroy()
    buffer3012.destroy()
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query302.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    render_pass_encoder5000.insertDebugMarker("marker");
    
    
    query305.destroy()
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder601.resolveQuerySet(
        query601,
        0,
        32,
        buffer600,
        0
    )
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    query600.destroy()
    buffer3014.destroy()
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    render_pass_encoder3010.setStencilReference(1);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    buffer3010.destroy()
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout303]
    });
    compute_pass_encoder3000.end();
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    render_pass_encoder5000.insertDebugMarker("marker");
    render_pass_encoder3000.setPipeline(render_pipeline308);
    render_pass_encoder5000.executeBundles([])
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query304.destroy()
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.pushErrorScope("internal");
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
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
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline308.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group306);
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder5000.executeBundles([])
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder5000.setPipeline(render_pipeline501);
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
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_pass_encoder5000.setBindGroup(0, bind_group501);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group502);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    device60.queue.submit([command_buffer602, ]);
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group307);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder5000.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer601, ]);
}