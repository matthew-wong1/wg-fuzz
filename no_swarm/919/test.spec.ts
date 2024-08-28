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
    
    const array0 = new Float32Array([-0.75, 0.25, -0.25, 0.0, -0.5, 0.0, -0.25, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, 0.75, 1.0, 0.5, 0.5, -0.5, 1.0, -0.5, 1.0, 1.0, 0.25, -0.25, -0.75, 0.5, 0.5, -0.25, 0.5, -1.0, 0.5, 0.25, 0.25, -1.0, 1.0, 0.25, -0.25, -0.75, -0.75, -0.75, 0.0, 0.75, -0.75, 0.75, -0.75, -1.0, -0.75, -0.5, -0.25, 1.0, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, 0.5, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -0.75, -0.5, 0.25, 0.5, 0.25, -0.75, -0.25, 0.0, 1.0, 0.5, -0.5, 1.0, -0.5, -1.0, 0.75, -0.25, -0.25, -0.5, -0.5, -0.5, 1.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.25, -0.5, 0.0, -0.5, 1.0, -0.75, -0.5, 0.25, 0.5, -0.25, 0.75, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query000.destroy()
    query000.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_buffer000 = command_encoder000.finish();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device40.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.pushErrorScope("validation");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    query200.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query000.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    buffer500.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    
    render_pass_encoder3000.executeBundles([])
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    query000.destroy()
    query000.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query000.destroy()
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
    const array1 = new Float32Array([0.0, 1.0, -1.0, -1.0, -0.25, 1.0, 0.75, -0.75, 0.75, 0.0, -1.0, 0.75, -1.0, 0.75, 0.25, 0.25, 0.25, 0.0, 0.0, 0.75, -0.25, 0.75, -1.0, 0.75, -0.25, -1.0, -0.25, -0.75, 0.75, -0.25, -1.0, -0.5, 0.25, 0.0, 0.75, 0.25, 0.0, -0.75, -0.5, -0.25, 0.5, -0.25, 0.5, -0.75, -0.75, 0.0, 0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 0.5, -1.0, 0.25, 0.0, 0.0, 0.25, -1.0, 1.0, -1.0, -0.75, 0.75, 0.0, 0.0, 0.0, 0.25, -0.5, 0.25, 0.75, 0.5, -0.75, 0.75, -1.0, 0.0, -0.75, 0.5, -0.25, 0.25, -1.0, -1.0, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, -1.0, 1.0, -1.0, 0.75, -0.5, -0.75, -0.25, -0.25, 0.25, -0.75, -0.25, -0.25, 0.25, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer000.destroy()
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    buffer001.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
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
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    
    device20.pushErrorScope("out-of-memory");
    device50.pushErrorScope("validation");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    texture200.destroy();
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const array2 = new Float32Array([0.5, 0.25, 0.75, 0.75, 1.0, -0.75, 0.75, 1.0, 1.0, -0.25, -0.75, -1.0, 0.25, -0.25, 0.5, -0.75, 0.5, -1.0, 0.5, 0.0, 0.75, 1.0, -0.75, 1.0, -0.5, 0.5, 0.5, 0.0, 0.75, -0.25, 0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 0.5, 0.0, -1.0, -0.25, -0.25, 0.25, -0.25, 0.25, 0.25, -1.0, 0.0, -1.0, 0.25, 0.75, 0.25, -1.0, 0.25, 0.0, -1.0, 0.0, -0.5, 0.0, 0.5, -0.75, -1.0, -0.5, 0.25, 0.5, 0.75, -1.0, -0.5, 0.0, 0.75, 0.0, 0.0, -0.25, 0.0, -0.25, 0.0, 0.25, 0.25, -0.75, 1.0, 1.0, -0.5, 1.0, 0.0, 1.0, 0.75, 0.25, -1.0, 0.5, 0.0, -0.75, -0.25, -0.5, 0.75, -0.5, 1.0, 0.0, 0.75, 0.75, 0.5, 1.0, ]);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setStencilReference(1);
    device30.pushErrorScope("internal");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer503.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer503.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer503.unmap();
        console.log(new Float32Array(data));
    }
    
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    buffer502.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    device20.pushErrorScope("validation");
    
    buffer003.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer200 = command_encoder200.finish();
    
    render_bundle_encoder000.popDebugGroup();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    query000.destroy()
    command_encoder001.popDebugGroup()
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    render_pass_encoder3000.insertDebugMarker("marker");
    
    buffer501.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_buffer201 = command_encoder201.finish();
    
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
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
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer200.destroy()
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    
    buffer301.destroy()
    device00.pushErrorScope("internal");
    query000.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query000.destroy()
    
    {
        await buffer503.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer503.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer503.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder200.insertDebugMarker("marker");
    query201.destroy()
    query200.destroy()
    query200.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder5000.insertDebugMarker("marker")
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
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    query001.destroy()
    
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    buffer002.destroy()
    {
        await buffer503.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer503.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer503.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    buffer004.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    query001.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device60.pushErrorScope("internal");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    texture201.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline001);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_bundle_encoder301.popDebugGroup();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    buffer503.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query500.destroy()
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const command_buffer001 = command_encoder001.finish();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    query002.destroy()
    query000.destroy()
    query001.destroy()
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer505.destroy()
    
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query000.destroy()
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

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const array3 = new Float32Array([-0.75, -0.5, -0.75, -0.5, 1.0, 0.0, 0.25, 1.0, 0.25, 0.25, 0.5, -0.5, 0.5, 0.75, 1.0, 0.25, 0.0, 0.0, -0.25, 0.5, -0.5, 0.75, 0.25, 0.25, 0.25, -0.75, -1.0, 0.75, -0.25, 0.75, 0.25, -0.5, -1.0, -0.25, 0.75, 0.75, -0.25, -1.0, -0.75, -0.5, 0.0, 0.0, -0.5, -0.75, 0.75, -1.0, 0.75, -0.5, -0.5, -0.5, -0.25, 0.0, 0.5, -0.5, 0.0, 0.25, 0.0, -0.75, 0.0, 1.0, 0.0, 0.75, 0.75, -0.75, -0.25, 0.75, 0.75, 0.25, -0.5, 1.0, -1.0, -0.5, 1.0, 0.25, 0.0, 0.0, 0.5, -0.5, 0.75, -0.5, 0.0, -0.5, -0.75, -0.5, -0.25, -1.0, 0.25, 0.5, -0.25, -1.0, -0.75, -1.0, 1.0, -0.75, 0.0, 0.0, 0.25, 0.5, 0.0, -0.5, ]);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query300.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query002.destroy()
    
    query001.destroy()
    query003.destroy()
    
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const command_buffer003 = command_encoder003.finish();
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder3010.popDebugGroup()
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array4 = new Float32Array([-0.5, 0.25, -0.25, -0.25, -0.25, 0.5, 1.0, 0.75, -0.25, 1.0, -0.5, 0.75, -0.25, -0.25, -0.5, 0.75, 1.0, 0.25, 1.0, -0.5, 1.0, -1.0, -1.0, 0.75, 0.75, -1.0, 0.0, 0.0, -0.5, 0.25, 0.75, 1.0, 0.0, -0.75, -0.5, 0.75, -0.25, 0.5, -1.0, -0.5, 0.5, 0.5, 1.0, -0.25, -1.0, -0.5, 1.0, -0.25, -0.25, 1.0, -0.25, 0.0, -0.5, 0.0, 1.0, 1.0, -0.5, 1.0, 0.75, 0.25, 0.25, -0.5, 1.0, 1.0, -0.75, -0.25, 0.5, 0.0, -1.0, -0.25, -1.0, 0.75, -0.75, 0.75, 0.75, -1.0, -0.5, 0.5, 1.0, -0.75, 1.0, 0.0, 0.0, -0.75, -0.25, -0.75, -0.75, 0.25, 0.25, -1.0, 0.0, -0.5, -0.5, 0.5, -0.25, -0.75, -0.5, 1.0, 0.0, -0.75, ]);
    
    render_pass_encoder3030.setPipeline(render_pipeline300);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setStencilReference(1);
    query001.destroy()
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture203.destroy();
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
    const array5 = new Float32Array([0.25, -0.25, -0.75, 1.0, 0.5, -0.25, 1.0, -1.0, -0.5, 0.25, -1.0, 1.0, 0.75, -1.0, 1.0, -0.75, -0.5, -0.25, -1.0, 0.25, -0.25, -0.5, 0.75, 0.75, 0.5, 1.0, 0.5, 1.0, 1.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, -0.75, 0.0, -0.25, -0.25, -0.25, 0.0, 0.5, 0.25, -1.0, -0.25, 0.25, -0.75, 0.75, -0.25, -0.25, -1.0, 0.0, 1.0, -0.75, -0.75, -1.0, 0.75, -0.25, 0.25, 0.75, 0.25, -0.25, 1.0, -0.75, -0.75, 0.0, 1.0, -0.5, 0.75, 0.25, -0.5, 1.0, -0.25, 0.25, 0.75, 0.25, 0.75, 0.5, 1.0, -0.5, 0.25, -0.25, 0.25, 0.75, 1.0, 0.25, 0.25, 0.25, -1.0, -0.75, 1.0, 0.75, -0.25, 0.75, -0.5, 1.0, ]);
    
    render_bundle_encoder001.popDebugGroup();
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setStencilReference(1);
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeBuffer(buffer504, 0, array2, 0, array2.length);
    texture300.destroy();
    texture700.destroy();
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    
    device60.destroy();
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    render_bundle_encoder301.popDebugGroup();
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group302);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_pass_encoder3030.setStencilReference(1);
    query200.destroy()
    query300.destroy()
    compute_pass_encoder5000.popDebugGroup()
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    buffer506.destroy()
    
    query202.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder700.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer501 = command_encoder501.finish();
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group303);
    device30.queue.submit([command_buffer302, ]);
    const command_buffer700 = command_encoder700.finish();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    device70.queue.submit([command_buffer700, ]);
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
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder5000.end();
    render_pass_encoder3000.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
}